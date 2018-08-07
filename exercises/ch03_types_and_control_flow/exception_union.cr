begin
  a = 4 + 6
rescue
  puts "an ex occurred"
ensure
  puts a + 42
# puts a.as(Int32) + 42 # => 52
end
# => Error, undefined method '+' for Nil
# compile-time type is (Int32 | Nil)
