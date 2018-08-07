# Variables declared in a program are not visible inside methods
# START:p1
x = 1

def add(y)
  x + y # Error: undefined local variable or method 'x'
end

add(2)

# END:p1

# Duck typing:
# START:p2
def add(x, y)
  # return x + y   # return is optional
  x + y
end

add(2, 3)                # (1) => 5
add 2, 3                 # (2) => 5
add(1.0, 3.14)           # (3) => 4.14
add("Hello ", "Crystal") # (4) => "Hello Crystal"
add(42, " times")        # (5) => Error: no overload matches 'Int32#+' with type String
add                      # (6) => Error: wrong number of arguments for 'add'
# (given 0, expected 2)
# END:p2

# only y is typed:
def add(x, y : Int)
  x + y
end

add 3, 4    # => 7
add 2.14, 7 # => 9.14

# Arguments:
# START:p3


def show(x, y = 1, z = 2, w = 3)
  "x: #{x}, y: #{y}, z: #{z}, w: #{w}"
end

show 10           # => "x: 10, y: 1, z: 2, w: 3"
show 10, 10       # => "x: 10, y: 10, z: 2, w: 3"
show 10, 30, 2, 3 # => "x: 10, y: 30, z: 2, w: 3"
show 10, 20       # => "x: 10, y: 20, z: 2, w: 3"

show 10, z: 10             # => "x: 10, y: 1, z: 10, w: 3"
show 10, w: 30, y: 2, z: 3 # => "x: 10, y: 2, z: 3, w: 30"
show y: 10, x: 20          # => "x: 20, y: 10, z: 2, w: 3"
show y: 10                 # Error, missing argument: x
# END:p3

# Using named arguments:
require "oauth2"

client = OAuth2::Client.new(
  host: "martian1",
  client_id: "7594",
  client_secret: "W*GDFUY75HSVS#@!"
)

def display(n, *, hight, width)
  "#The shape has hight {#hight} and width {#width}"
end

display 3, hight: 2, width: 5

# Return values:
# START:p4

def typed_method : Array(Int32)
  (42..47).to_a.select { |n| n % 4 == 0 }
end

typed_method # => [44]
# END:p4

# START:p5
# Multiple return values
def triple_and_array(s)
  {s * 3, s.split}
end

# unpacking:
ret = triple_and_array("42") # => {"424242", ["42"]}
ret[0]                       # => "424242"
ret[1]                       # => ["42"]
# or:
num, arr = triple_and_array("gold")
num # => "goldgoldgold"
arr # => ["gold"]
# END:p5

# START:p6
def salaries(*employees)
  employees.each do |emp|
    # calculate salary
    puts "#{emp}'s salary is: 2500"
  end
end

salaries()        # =>
salaries("Jones") # => Jones's salary is: 2500
salaries("Baudelaire", "Rogers", "Gandhi")

# =>
# Baudelaire's salary is: 2500
# Rogers's salary is: 2500
# Gandhi's salary is: 2500
# END:p6

# START:p7
def increment(number, by value)
  number + value
end

p increment(10, by: 10) # => 20
# END:p7

# START:p8


def join(*args, with joiner)
  String.build do |str|
    args.each_with_index do |arg, index|
      str << joiner if index > 0
      str << arg
    end
  end
end

join 1, 2, 3, with: "-"       # => "1-2-3"
join 1, 2, 3, 4, 5, with: "*" # => "1*2*3*4*5"
# END:p8
