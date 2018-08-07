puts "Enter the numbers one by one, and end with an empty line:"
arr = [] of Int8

# alternative:
# arr1 = [75, 42, 156]
# typeof(arr1) # => Array(Int32)

# number = gets
# p "You entered #{number}" # => "You entered 42"
# p "You entered " + number + "."
# => no overload matches 'String#+' with type (String | Nil)

# arr << number
# Error: no overload matches 'Array(Int8)#<<' with type (String | Nil)

# p typeof(number) # => (String | Nil)
# p number.class   # => String

# if number
#   arr << number.to_i8
#   # => Error: no overload matches 'Array(Int8)#<<' with type String
#   # Overloads are: - Array(T)#<<(value : T)
#   p arr # => [42]
# end

while number = gets
  number = number.strip # removes leading or trailing whitespace
  if number == "" || number == "stop"
    break
  end
  if number.to_i?
    #     if number.to_i8?
    arr << number.to_i8
  else
    puts "input is no integer"
    # raise "not a small integer"
  end
end
p arr # => for example: [78, 56, 12]

# aside:
mem = nil
mem ||= 1
mem # => 1
mem ||= "crystal"
mem # => 1
