x = rand < 0.0001 ? 1 : "hello"
typeof(x) # => (Int32 | String)

x - 1 # => Error: undefined method '-' for String

class String
  def -(n)
    self[0...size - n]
  end
end

x = "hello"
x - 1 # => "hell"
x - 2 # => "hel"
x - 3 # => "he"
