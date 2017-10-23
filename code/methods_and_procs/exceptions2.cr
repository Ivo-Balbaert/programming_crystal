puts "Enter the numbers one by one, and end with an empty line:"
p input_array # => for example: [78, 56, 12]


def input_array
  arr = [] of Int8
  while number = gets
    number = number.strip # removes leading or trailing whitespace
    if number == "" || number == "stop"
      break
    end
    add_to_array(arr, number)
  end
  arr
end

# START: p1
def add_to_array(arr, number)
  arr << number.to_i8
rescue
  puts "integer bigger than 255"
end
# END: p1
