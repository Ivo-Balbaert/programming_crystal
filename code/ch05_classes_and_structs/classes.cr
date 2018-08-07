# START: p1
class Mineral
  getter name, hardness, crystal_struct

  def initialize(@name : String,
                 @hardness : Float64,
                 @crystal_struct : String)
  end
end

# END: p1
min1 = Mineral.new("gold", 1.0, "cubic")
min1           # => #<Mineral:0x271cf00 @crystal_struct="cubic", @hardness=1.0, @name="gold">
min1.object_id # => 41012992 == 0x271cf00

typeof(min1)  # => Mineral
min1.class    # => Mineral
Mineral.class # => Class

# generic class:
# START: p2
class Mineralg(T)
  getter name

  def initialize(@name : T)
  end
end

min = Mineralg.new("gold")
min2 = Mineralg.new(42)
min3 = Mineralg(String).new(42)

# => Error: no overload matches 'Mineralg(String).new' with type Int32
# END: p2

# START: p3
class Mineral
  @@planet = "Earth"

  getter name, hardness, crystal_struct
  setter id
  property quantity : Float32

  def initialize(@id : Int32, @name : String, @hardness : Float64,
                 @crystal_struct : String)
    @quantity = 0f32
  end

  def self.planet
    @@planet
  end

  def finalize
    puts "Bye bye from this #{self}!"
  end
end

min1 = Mineral.new(101, "gold", 1.0, "cubic")
min1.quantity = 453.0f32
min1.id        # => Error: undefined method 'id' for Mineral
Mineral.planet # => "Earth"
# END: p3

# loop do
#   Mineral.new(101, "gold", 1.0, "cubic")
# end

# START: p4
class Mineral
  getter id, name, hardness, crystal_struct
  property quantity : Float32

  def initialize(@id : Int32, @name : String, @hardness : Float64,
                 @crystal_struct : String)
    @quantity = 0f32
  end

  def ==(other : self) # self is Mineral
    id == other.id
  end

  def ==(other)
    false
  end

  def self.compare(m1 : self, m2 : self)
    m1.id == m2.id
  end
end

m1 = Mineral.new(101, "gold", 1.0, "cubic")
m2 = Mineral.new(108, "gold", 1.0, "cubic")
m3 = Mineral.new(101, "gold", 1.0, "cubic")
m1 == m2                # => false
m1 == m3                # => true
Mineral.compare(m1, m2) # => false
# END: p4

# START: p5
class Mineral
  getter id, name, hardness, crystal_struct
  property quantity : Float32

  def initialize(@id : Int32, @name : String, @hardness : Float64,
                 @crystal_struct : String)
    @quantity = 0f32
  end

  def initialize(@id : Int32)
    @quantity = 0f32
    @name = "rock"
    @hardness = 0
    @crystal_struct = "unknown"
  end
end

m1 = Mineral.new(101, "gold", 1.0, "cubic")
m4 = Mineral.new(42)
# => #<Mineral:0x271bd40
# @crystal_struct="unknown",
# @hardness=0,
# @id=42,
# @name="rock",
# @quantity=0>
# END: p5
