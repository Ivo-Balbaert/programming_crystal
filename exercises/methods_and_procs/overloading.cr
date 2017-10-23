# version 1:
def add(x : Int, y : Int)
  x + y
end

# version 2:
def add(x : Number, y : Number)
  x + y
end

# version 3:
def add(x : Number, y : String)
  x.to_s + y # convert a number to a string with to_s method
end

# version 4: generic version
def add(x, y)
  x + y
end

# new methods:
# version 5:
def add(x : Number, y : Bool)
  y ? x : 0
end

# version 6:
def add(x : String, y : String)
  if x.to_i? && y.to_i?
    add x.to_i, y.to_i # calls version 1
  else
    x + y
  end
end

add(2, 3)                # (1) => 5
add(1.0, 3.14)           # (2) => 4.14
add("Hello ", "Crystal") # (3) => "Hello Crystal"
add(42, " times")        # (4) => "42 times"
add 5, true              # (5) => 5
add 13, false            # (5) => 0
add("12", "13")          # (6) => 25
