# serving index.html
require "http/server"

port = 3000
host = "127.0.0.1"
mime = "text/html"

server = HTTP::Server.new(host, port, [
  HTTP::ErrorHandler.new,
  HTTP::LogHandler.new,
]) do |ctx|
  req = ctx.request
  ctx.response.content_type = mime

  if req.method == "GET" && req.path == "/public"
    filename = "./public/index.html"
    ctx.response.content_length = File.size(filename)
    ctx.response.content_type = mime
    File.open(filename) do |file|
      IO.copy(file, ctx.response)
    end
    next
  end
end

puts "Listening at #{host}:#{port}"
server.listen
