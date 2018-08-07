# START:code
def add(x, y)
  x + y
end

puts add(2, 3) # => 5  # same as puts add 2, 3
# () can be left out in method calls
puts add(1.0, 3.14)           # => 4.14
puts add("Hello ", "Crystal") # => "Hello Crystal"
# + concatenates two strings
# END:code

puts add(42, " times") # => Error

# Ruby runtime error
# in '+': String can't be coerced into Fixnum (TypeError)

# Crystal compile error:
# Error in error1.cr:7: instantiating 'add(Int32, String)'

# add(42, " times")
#         ^~~

# in error1.cr:2: no overload matches 'Int32#+' with type String
