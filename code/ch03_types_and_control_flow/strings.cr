# START:p1
var1 = "Crystal"
var1[2..4]                      # => "yst"
var1.reverse                    # => "latsyrC"
var1.size                       # => 7   # length or len do not exist
var1.upcase                     # => "CRYSTAL"
var1.capitalize                 # => "Crystal"
var1.includes? "ys"             # => true
var1.count "t"                  # => 1
var1.starts_with? "cr"          # => false
var1.ends_with? "al"            # => true
var1.index("a")                 # => 5
var1.sub("ys", "is")            # => "Cristal"  # gsub changes all occurrences
var1.gsub(/([aeiou])/, "*\\1*") # => "Cryst*a*l"
var2 = var1.split("")           # => ["C", "r", "y", "s", "t", "a", "l"]
var2.join("-")                  # => "C-r-y-s-t-a-l"
# END:p1

s = "crys"
s[2] = 'b' # => undefined method '[]=' for String

age = 61
p "age: " + age.to_s # => age: 61 # creates a string on the heap!
# better:
p "age:  + #{age}" # => age: 61
# best:
str = String.build do |io|
  io << "age: " << age
end
p str # => age: 61
