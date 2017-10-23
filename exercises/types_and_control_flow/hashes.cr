h1 = Hash(Int32 | Char, Int32).new
h1[1] = 42
h1['C'] = 99
h1 # => {1 => 42, 'C' => 99}"
# h1["Crystal"] = 89
# => Error: no overload matches
# 'Hash(Char | Int32, Int32)#[]=' with types String, Int32

h2 = {} of String | Int32 => Bool | String
h2["Crystal"] = true
h2["gold"] = "OK"
h2[108] = "perfect"
h2[13] = false
h2 # => {"Crystal" => true, "gold" => "OK", 108 => "perfect", 13 => false}
h2["Crystal"] = 89
# => Error: no overload matches 'Hash(Int32 | String, Bool | String)#[]='
# with types String, Int32
