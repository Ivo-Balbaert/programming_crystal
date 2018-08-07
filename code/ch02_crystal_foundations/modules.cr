# START:p1
module Hardness
  def data
    mohs = {"talc" => 1, "calcite" => 3, "apatite" => 5,
            "corundum" => 9}
  end

  def hardness
    data[self.name]
  end
end

# END:p1

# h1 = Hardness.new # => undefined method 'new' for Hardness:Module

# START:p2
class Mineral
  include Hardness
  getter name : String

  def initialize(@name)
  end
end

# END:p2

# START:p3
min = Mineral.new("corundum")
min.hardness # => 9
# END:p3
