def add(x, y)
  if x.is_a?(Numeric) and y.is_a?(String)
  	x.to_s + y
  else
    x + y
  end
end

puts add(2, 3)                # (1) => 5
puts add(1.0, 3.14)           # (2) => 4.14
puts add("Hello ", "Ruby")    # (3) => "Hello Ruby"
puts add(42, " times")        # (4) => "42 times"