require "kemal"
require "sqlite3"

require "./db_json/*"

db = DB.open "sqlite3://../chinook.db"

def table_names(db)
  sql = "SELECT name FROM sqlite_master WHERE type='table';"
  db.query_all(sql, as: String)
end

def write_json(io, col_names, rs)
  JSON.build(io) do |json|
    json.object do
      col_names.each do |col|
        json_encode_field json, col, rs.read
      end
    end
  end
  io << "\n"
end

def json_encode_field(json, col, value)
  case value
  when Bytes
    json.field col do
      json.array do
        value.each do |e|
          json.scalar e
        end
      end
    end
  else
    json.field col do
      value.to_json(json)
    end
  end
end

# routing handlers:
get "/" do |env|
  env.response.content_type = "application/json"
  tables = table_names(db)
  tables.to_json
end

# show tables in a view:
# get "/" do |env|
#   tables = table_names(db)
#   render "src/views/tables.ecr"
# end

get "/:table_name" do |env|
  env.response.content_type = "application/json"
  table_name = env.params.url["table_name"]
  # avoid SQL injection by checking table name
  unless table_names(db).includes?(table_name)
    # ignore if the requested table does not exist.
    env.response.status_code = 404
  else
    db.query "select * from #{table_name}" do |rs|
      col_names = rs.column_names
      rs.each do
        write_json(env.response.output, col_names, rs)
        # force chunked response even on small tables
        env.response.output.flush
      end
    end
  end
end

Kemal.run

db.close
