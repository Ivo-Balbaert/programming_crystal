require "http/server"

server = HTTP::Server.new(8080) do |ctx|                           # (1)
  ctx.response.content_type = "text/plain"                         # (2)
  ctx.response.print "Crystal web server: got #{ctx.request.path}" # (3)
end

puts "Crystal web server listening on http://localhost:8080"
server.listen # (4)

# => in browser with the URL http://localhost:8080/
# "Crystal web server: got /"
