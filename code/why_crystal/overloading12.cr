# overloading 1:
def add(x : Int, y : Int)
  x + y
end

# START:ovl2
# overloading 1: ...
# overloading 2:
def add(x : Number, y : Number)
  x + y
end

puts add(2, 3)                # (1) => 5
puts add(1.0, 3.14)           # (2) => 4.140000000000001
puts add("Hello ", "Crystal") # (3) =>
# Error: "no overload matches 'add' with types String, String"
puts add(42, " times") # (4)
# => Error: "no overload matches 'add' with types Int32, String"
# END:ovl2
