require "http/server"

server = HTTP::Server.new(5000) do |ctx|
  ctx.response.content_type = "text/xml"
  time = Time.now
  message = if time.hour < 12
              "Good morning"
            elsif time.hour < 18
              "Good afternoon"
            else
              "Good night"
            end
  ctx.response.print "<Time>It is now #{time}"
  ctx.response.print "<Response><Say>#{message} from Crystal!</Say></Response></Time>"
end

puts "Listening on http://localhost:5000"
server.listen
# => in browser with the URL http://localhost:5000/
# This XML file does not appear to have any style information associated with it.
# The document tree is shown below.
#       <Time>It is now 2017-10-02 12:04:30 +0200
#           <Response>
#               <Say>Good afternoon from Crystal!</Say>
#           </Response>
#       </Time>
