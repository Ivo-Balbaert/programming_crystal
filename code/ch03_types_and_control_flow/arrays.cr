arr = [56, 123, 5, 42, 108]
arr.includes? 42 # => true

arr.shift # => 56
arr       # => [123, 5, 42, 108]
arr.pop   # => 108
arr       # => [123, 5, 42]

arr.each do |i|
  puts i
end
# 123
# 5
# 42
