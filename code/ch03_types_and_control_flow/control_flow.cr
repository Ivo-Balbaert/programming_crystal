var1 = 1 > 2 ? 3 : 4 # => 4

var1 = rand < 0.5 ? 42 : "Crystal" # => 42 or "Crystal"
typeof(var1)                       # => (Int32 | String)
# var1.abs # => Error: undefined method 'abs' for String
# ivar1 = var1.as(Int32)
# ok if var1 == 42, else: cast from String to Int32 failed (TypeCastError)
ivar1 = var1.as?(Int32) # => 42 or nil
if ivar1 = var1.as?(Int32)
  p ivar1.abs # => 42
end

var1 = 42
if var1.is_a?(Number)
  # here var1 is a Number, which can be integer or floating point
end

case var1
when Number
  p var1 + 42
when String
  p "we have a string"
else
  p "is not a number or a string"
end
# => 84

var1 = "Crystal"
if var1.responds_to?(:abs) # false in this case
  var1.abs
end

# START:p1
num = 42
case num
when .even?
  puts "you have an even number"
when .odd?
  puts "you have an odd number"
end
# => you have an even number
# END:p1

# START:p2
(1..100).each do |i|
  case {i % 3, i % 5}
  when {0, 0}
    puts "FizzBuzz"
  when {0, _}
    puts "Fizz"
  when {_, 0}
    puts "Buzz"
  else
    puts i
  end
end
# END:p2
