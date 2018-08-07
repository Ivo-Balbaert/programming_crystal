tpl = {42, "silver", 'C'}
tpl.class # => Tuple(Int32, String, Char)

# Empty tuple
empty = Tuple.new

# Creating a tuple with new
a = Tuple.new(42, "silver", 'C')
a # => {42, "silver", 'C'}

tpl[0] # => 42       (Int32)
tpl[1] # => "silver" (String)
tpl[2] # => 'C'      (Char)
# tpl[7] # => Error: index out of bounds for Tuple(Int32, String, Char) (7 not in 0..2)
var = 89
# tpl[var] # => Index out of bounds (IndexError)
tpl[var]? # => nil

tpl = {name: "Crystal", year: 2017} # NamedTuple(name: String, year: Int32)
tpl[:name]                          # => "Crystal" (String)
