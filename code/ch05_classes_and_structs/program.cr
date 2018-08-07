# puts self # => Error: there's no self in this scope

# START: p1
def display
  puts "Top-level display"
end

class Mineral
  puts self # => Mineral
  getter name
  getter hardness
  getter crystal_struct

  def initialize(@name : String, @hardness : Float64,
                    @crystal_struct : String)
  end

  def display
    ::display # => Top-level display
    p self    # => <Mineral:0x271cf00 @crystal_struct="cubic",
    #     @hardness=1.0, @name="gold">
  end
end

min1 = Mineral.new("gold", 1.0, "cubic")
min1.display
# END: p1
