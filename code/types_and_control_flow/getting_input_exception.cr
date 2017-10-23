# first version:
puts "Enter the numbers one by one, and end with an empty line:"
arr = [] of Int8
while number = gets
  number = number.strip # removes leading or trailing whitespace
  if number == "" || number == "stop"
    break
  end
  if number.to_i?
    arr << number.to_i8
  else
    puts "input is no integer"
    # raise "input is no integer"
  end
end

# second version:
# START:rescue
puts "Enter the numbers one by one, and end with an empty line:"
arr = [] of Int8
while number = gets
  number = number.strip # removes leading or trailing whitespace
  if number == "" || number == "stop"
    break
  end
  begin
    arr << number.to_i8
  rescue
    puts "integer bigger than 255"
  end
end
p arr # => for example: [78, 56, 12]
# END:rescue

# general exception-handling mechanism:
begin
  # some dangerous code here
  # possibly your own raise "..."
rescue ex
  # execute if an exception is raised
  p ex.message
else
  # execute if an exception isn't raised
ensure
  # this will always be executed
  puts "Cleanup..."
end
