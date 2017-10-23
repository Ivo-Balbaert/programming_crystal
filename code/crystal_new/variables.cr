# START:p1
str = "What a beautiful mineral!"
str1 = "What a
          beautiful mineral!" # multi-line string
# END:p1

# START:p2
ch = 'C'
ch == "C"    # => false
typeof(ch)   # => Char
typeof(Char) # => Class
!true        # => false
# END:p2

# START:p3
ch = 42
typeof(ch) # => Int32
# END:p3

# START:p4
a = 42_i64
f = 1.5e-10
typeof(f) # => Float64
# END:p4

# START:p5
puts a1 # => Error: undefined local variable or method 'a1'
# END:p5

# START:p6
a1 : String
# END:p6

# START:p7
a1 : String = "hello"
a1 = 42 # => Error: type must be String, not (Int32 | String)
# END:p7

# START:p8
str.size # => 25
ch.size  # => Error: undefined method 'size' on Int32"
# END:p8

# START:p9
ch + str # => Error: no overload matches 'Int32#+' with type String
# Overloads are:
#  - Int32#+(other : Int8)
#  - Int32#+(other : Int16)
#  - Int32#+(other : Int32)
#  - Int32#+(other : Int64)
#  - Int32#+(other : UInt8)
#  - Int32#+(other : UInt16)
#  - Int32#+(other : UInt32)
#  - Int32#+(other : UInt64)
#  - Int32#+(other : Float32)
#  - Int32#+(other : Float64)
#  - Number#+()
# END:p9

# START:p10
str, num = "Diamond", 42
str # => "Diamond"
num # => 42
# END:p10

# START:p11
# swap
n = 41
m = 42
n, m = m, n
n # => 42
m # => 41
# END:p11

# START:p12
# multiple statements on one line
n = 3; n += 1; p n # => 4
# END:p12

# START:p13
n = begin
  a = 3
  a += 1
  a
end # => 4
# END:p13

# START:p14
# string interpolation
"The sum = #{41 + 2.5}" # => "The sum = 43.5"
# END:p14

# START:p15
GRAVC = 6.67e-11 # gravitational constant
GRAVC =        5 # => Error: already initialized constant
# END:p15

# START:p16
nil         # => nil
typeof(nil) # => Nil
# END:p16
