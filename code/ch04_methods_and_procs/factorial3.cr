def fact(n : Int) : Int
  if n < 0
    puts "n cannot be negative!"
    exit
  end
  n == 0 ? 1 : n * fact(n - 1)
end

fact(5)  # => 120
fact(-2) # => "n cannot be negative!"
