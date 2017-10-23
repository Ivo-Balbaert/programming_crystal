ch = Channel(Char).new(2) # A buffered channel of capacity 2

spawn do
  puts "Before send 1"
  ch.send('\u03B1')
  puts "Before send 2"
  ch.send('\u03B2')
  if ch.empty?
    puts "Channel is empty"
  else
    puts "Channel is not empty"
  end
  puts "Before send 3"
  ch.send('\u03C9')
  puts "After send"
end

3.times do |i|
  puts ch.receive
end

# =>
# Before send 1
# Before send 2
# Channel is not empty
# Before send 3
# α
# β
# After send
# ω
