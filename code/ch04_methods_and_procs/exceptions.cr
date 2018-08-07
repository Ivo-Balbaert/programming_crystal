puts "Enter the numbers one by one, and end with an empty line:"
input_array # => for example: [78, 56, 12]

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

def add_to_array(arr, number)
  begin
    arr << number.to_i8
  rescue
    puts "integer bigger than 255"
  end
end
