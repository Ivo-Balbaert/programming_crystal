ch = Channel(Int32).new

spawn do
  puts "start fiber"
  n = ch.receive # fiber will block here if nothing on the channel yet
  puts "fiber received #{n}"
end

puts "before send"
ch.send 42
puts "main has send 42"
# =>
# before send            # (1)
# start fiber            # (2)
# fiber received 42      # (3)
# main has send 42       # (4)
