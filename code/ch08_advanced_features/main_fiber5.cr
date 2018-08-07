ch = Channel(String).new
spawn do
  while line = gets
    ch.send(line)
  end
end

puts ch.receive

# For example:
# =>
# hello
# hello
