def incr
  n = 0
  ->{ n += 1; n }
end

typeof(incr) # => Proc(Int32)
p incr.call  # => 1
p incr.call  # => 1

cnt = incr
typeof(cnt) # => Proc(Int32)
p cnt.call  # => 1
p cnt.call  # => 2

cnt2 = incr
cnt2.call # => 1
