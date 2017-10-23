def generator(n : T) forall T
  chan = Channel(T).new
  spawn do
    loop do
      sleep n
      chan.send n
    end
  end
  chan
end

ch1 = generator(1)
ch2 = generator(1.5)
ch3 = generator(5)

loop do
  select
  when n1 = ch1.receive
    puts "Int: #{n1}"
  when f1 = ch2.receive
    puts "Float: #{f1}"
  when ch3.receive
    break
  end
end

# Output:
# Int: 1
# Float: 1.5
# Int: 1
# Float: 1.5
# Int: 1
# Int: 1
# Float: 1.5
