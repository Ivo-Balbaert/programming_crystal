def data
  mohs = {"talc" => 1, "calcite" => 3, "apatite" => 5,
          "corundum" => 9}
end

def hardness(mineral : String)
  mohs = data
  mohs[mineral]
end

def hardness(mineral)
  "hardness is not defined for #{mineral}"
end

hardness("calcite") # => 3
hardness(456)       # => "hardness is not defined for 456"
