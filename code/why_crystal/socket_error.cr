# code that can give a nil pointer exception
# because connection can be closed, --> gets returns nil
# START:code
require "socket"

server = TCPServer.new(8080) # (1) create a new TCPServer at port 8080
socket = server.accept       # (2) accept a connection
puts socket.gets.upcase      # (3) read a line and output it in uppercase
# END:code
# Error: => undefined method 'upcase' for nil
# compile-time type is (String | Nil)

# Solution:
# START:code2
line = socket.gets
if line
  puts line.capitalize # Crystal knows that line cannot be nil here!
else
  puts "Nothing in the socket"
end
# END:code2
