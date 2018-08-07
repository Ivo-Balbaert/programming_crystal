# overloading 1:
def add(x : Int, y : Int)
  x + y
end

# overloading 2:
def add(x : Number, y : Number)
  x + y
end

# overloading 3:
def add(x, y)
  print "in generic add: "
  x + y
end

# START:ovl4
# overloading 1: ...
# overloading 2: ...
# overloading 3: ...
# overloading 4:
def add(x : Number, y : String)
  x.to_s + y # convert a number to a string with to_s method
end

puts add(2, 3)                # (1) => 5
puts add(1.0, 3.14)           # (2) => 4.140000000000001
puts add("Hello ", "Crystal") # (3) => "in generic add: Hello Crystal"
puts add(42, " times")        # (4) => "42 times"
# END:ovl4
