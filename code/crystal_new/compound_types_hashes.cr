# Hashes
# START:p1
mohs = {
  "talc"     => 1,
  "calcite"  => 3,
  "apatite"  => 5,
  "corundum" => 9,
}
typeof(mohs) # => Hash(String, Int32)
# END:p1

# START:p2
mohs["apatite"] # => 5
# END:p2

# START:p3
mohs["gold"]
# => Runtime error: Missing hash key: "gold" (KeyError)
# END:p3

# START:p4
mohs["gold"]? # => nil
# END:p4

# START:p5
mohs.has_key? "gold" # => false
# END:p5

# START:p6
mohs["diamond"] = 9  # adding key
mohs["diamond"] = 10 # changing value
mohs
# => {"talc" => 1, "calcite" => 3, "apatite" => 5,
#    "corundum" => 9, "diamond" => 10}
mohs.size # => 5
# END:p6

# START:p7
mohs['C'] = 4.5 # Error: no overload matches
# 'Hash(String, Int32)#[]=' with types Char, Float64
# END:p7

# creating an empty hash:
# START:p8
mohs = {}    # Error: Syntax error: for empty hashes use
# '{} of KeyType => ValueType'
# END:p8

# START:p9
mohs = {} of String => Int32 # {}
mohs = Hash(String, Int32).new
# END:p9
