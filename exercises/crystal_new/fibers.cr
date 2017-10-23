# START:p1
chan = Channel(String).new
i = 0
num = 10000
num.times do
  spawn do
    chan.send "fiber #{i}: I like crystals!"
  end
  i += 1
  puts chan.receive
end
# =>
# fiber 1: I like crystals!
# fiber 2: I like crystals!
# fiber 3: I like crystals!
# fiber 4: I like crystals!
# ...
# fiber 10000: I like crystals!
# END:p1
