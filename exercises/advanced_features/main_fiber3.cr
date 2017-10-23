ch = Channel(Int32).new

spawn do
  puts "start fiber"
  n = ch.send 42
  puts "fiber has sent value #{n}" # not printed, because main exits
end

puts "before receive"
val = ch.receive # main waits
puts "main has received value #{val}"
# =>
# before receive
# start fiber
# main has received value 42
