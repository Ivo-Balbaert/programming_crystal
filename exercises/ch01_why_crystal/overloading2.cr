# START:ovl1
# overloading 1:
def add(x : Int, y : Int)
  x + y
end

puts add(2, 3)      # (1) => 5
puts add(1.0, 3.14) # (2) =>
# Error: "no overload matches 'add' with types Float, Float"
puts add("Hello ", "Crystal") # (3) =>
# Error: "no overload matches 'add' with types String, String"
puts add(42, " times") # (4)
# => Error: "no overload matches 'add' with types Int32, String"
# END:ovl1

# START:ovl2
# overloading 2:


def add(x : Number, y : Number)
  x + y
end

puts add(2, 3)                # (1) => 5
puts add(1.0, 3.14)           # (2) => 4.14
puts add("Hello ", "Crystal") # (3) =>
# Error: "no overload matches 'add' with types String, String"
puts add(42, " times") # (4)
# => Error: "no overload matches 'add' with types Int32, String"
# END:ovl2

# START:ovl3
# overloading 3:


def add(x, y)
  x + y
end

puts add(2, 3)                # (1) => 5
puts add(1.0, 3.14)           # (2) => 4.14
puts add("Hello ", "Crystal") # (3) => "Hello Crystal"
puts add(42, " times")        # (4)
# => Error: "no overload matches 'add' with types Int32, String"
# END:ovl3

# START:ovl4
# overloading 4:


def add(x : Number, y : String)
  x.to_s + y # convert a number to a string with to_s method
end

puts add(2, 3)                # (1) => 5
puts add(1.0, 3.14)           # (2) => 4.14
puts add("Hello ", "Crystal") # (3) => "Hello Crystal"
puts add(42, " times")        # (4) => "42 times"
# END:ovl4

puts add("times", 42) # Error: no overload matches 'String#+' with type Int32


def add(x, y : Number)
  x + y.to_s
end
