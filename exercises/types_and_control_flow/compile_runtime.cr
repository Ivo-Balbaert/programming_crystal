if rand < 0.5
  var1 = 7
end
var1         # => 7 or nil
typeof(var1) # => (Int32 | Nil)
var1.class   # => Int32

var1 = 42
if rand < 0.5
  var1 = "Crystal"
end
var1         # => 42 (or "Crystal")
typeof(var1) # => (Int32 | String)
var1.class   # => Int32 (or String)

var1 = 42
if rand < 0.7
  var1 = "Crystal"
else
  var1 = true
end
var1         # => "Crystal" (or true)
typeof(var1) # => (Bool | String)
var1.class   # => String (or Bool)

if rand < 0.5
  var1 = 42
else
  var1 = "Crystal"
end
var2 = var1 * 2 # => 84 (or "CrystalCrystal")
typeof(var2)    # => type is (Int32 | String)
var2.class      # => Int32 (or String)
# var2 = var1 - 1 # => Error: undefined method '-' for String
# solved:
if var1.is_a?(Int32)
  var2 = var1 - 1
end
