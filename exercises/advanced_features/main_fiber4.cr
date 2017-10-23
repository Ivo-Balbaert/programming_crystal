# Part 1:
ch = Channel(Int32).new

# (1..10).each { |i| ch.send i }   # main blocks, because value is not received

# fiber 1:
spawn do
  loop do
    num = ch.receive
    puts "Got number #{num}"
  end
end

# main:
(1..10).each { |i| ch.send i }

# =>
# Got number 1
# Got number 2
# Got number 3
# Got number 4
# Got number 5
# Got number 6
# Got number 7
# Got number 8
# Got number 9
# Got number 10

# Part 2:
# fiber 1:
spawn do
  (1..10).each { |i| ch.send i }
end

# main:
loop do
  num = ch.receive
  puts "Got number #{num}"
end

# =>
# Got number 1
# Got number 2
# Got number 3
# Got number 4
# Got number 5
# Got number 6
# Got number 7
# Got number 8
# Got number 9
# Got number 10
