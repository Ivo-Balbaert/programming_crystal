# START:p1
def display(x : Number) # overloading 1
  puts "#{x} is a number"
end

def display(x : String) # overloading 2
  puts "#{x} is a string"
end

n = 42
display n # => 42 is a number

str = "magic"
display str # => magic is a string

r = rand < 0.5 ? n : str
typeof(r) # => (Int32 | String)
display r

# END:p1

# START:p2
def method1(*args : Int32)
end

def method1(*args : String)
end

method1 41, 42, 43              # OK, invokes first overload
method1 "Crystal", "Ruby", "Go" # OK, invokes second overload
method1 1, 2, "No"
# Error: no overload matches 'method1' with types Int32, Int32, String
method1() # Error: no overload matches 'method1'
# END:p2
