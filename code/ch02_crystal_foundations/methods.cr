# START:p1
def data
  mohs = {"talc" => 1, "calcite" => 3, "apatite" => 5, "corundum" => 9}
end

def hardness(mineral)
  data[mineral]
end

hardness("calcite") # => 3
# END:p1

hardness(456)

# => Runtime error: Missing hash key: 456 (KeyError)

# START:p2
def hardness(mineral : String)
  data[mineral]
end

hardness("calcite") # => 3
hardness(456)
# => Error: no overload matches 'hardness' with type Int32
# END:p2
