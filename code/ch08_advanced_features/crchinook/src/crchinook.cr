require "./crchinook/*"
require "sqlite3"

DB.open "sqlite3://../chinook.db" do |db|
  # (1) read all artists
  sql = "SELECT artistid, name FROM artists ORDER BY name ASC;"
  db.query sql do |rs|
    p "#{rs.column_name(1)} (#{rs.column_name(0)})"
    rs.each do # perform for each row in the ResultSet
      artistid = rs.read(Int32)
      name = rs.read(String)
      p "#{name} (#{artistid})"
      # => Name (ArtistId)
      # => A Cor Do Som (43)
      # => AC/DC (1)
      # => Aaron Copland & London Symphony Orchestra (230)
      # => ...
    end
  end
  # (2) read one artist by artistid
  sql = "SELECT name FROM artists WHERE artistid = 231;"
  p db.query_one sql, as: String
  # => "Ton Koopman"
  # (3) read one value with scalar
  sql = "SELECT MIN(birthdate) FROM employees;"
  oldest = db.scalar sql # => "1947-09-19 00:00:00"
  # (4) read oldest employee by substituting a variable
  sql = "SELECT firstname, lastname FROM employees WHERE birthdate = ?;"
  firstname, lastname = db.query_one sql, oldest, as: {String, String}
  p "#{firstname} #{lastname}" # => "Margaret Park"
  # (5) use exec for DDL (Data Definition) statements
  db.exec "insert into artists values (?, ?)", 276, "Scott Ross"
  args = [] of DB::Any
  args << 277
  args << "Bernard Foccroules"
  db.exec "insert into artists values (?, ?)", args
  # (6) read all table names
  sql = "SELECT name FROM sqlite_master WHERE type='table';"
  db.query_all(sql, as: String)
  # =>
  # [ "albums",
  #   "sqlite_sequence",
  #   "artists",
  #   "customers",
  #   "employees",
  #   ...,
  #   "sqlite_stat1"
  # ]
end
