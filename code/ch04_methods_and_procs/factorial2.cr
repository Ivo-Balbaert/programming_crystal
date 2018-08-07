def fact(n : Int) : Int
  if n < 0
    raise ("n cannot be negative!")
  end
  n == 0 ? 1 : n * fact(n - 1)
end

fact(5) # => 120

begin
  fact(-2) # => Runtime error: n cannot be negative! (Exception)
rescue ex
  p ex.message
end
# => "n cannot be negative!"

fact("Crystal") # => Error: no overload matches 'fact' with type String
