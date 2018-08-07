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
