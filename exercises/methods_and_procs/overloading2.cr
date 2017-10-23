def add(x, y)
  y == 0 ? nil : x + y
end

n = add(2, 3) # => 5
typeof(n)     # => (Int32 | Nil)
# n + 10  # => Runtime error: undefined method '+' for Nil

if n
  p n + 10 # => 15
end

if n.is_a? Int32
  p n + 10 # => 15
end
