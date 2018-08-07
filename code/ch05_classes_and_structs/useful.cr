# START: p1
class Mineral
  getter name, hardness

  def initialize(@name : String, @hardness : Float64)
  end

  # Good
  def to_s(io)
    io << name << ", " << hardness
  end

  # Bad
  def to_s(io)
    # using string interpolation creates an intermediate string
    io << "#{name}, #{hardness}"
  end

  # Bad
  def to_s(io)
    # using to_s and + create an intermediate string
    io << name.to_s + hardness.to_s
  end
end

min1 = Mineral.new("gold", 42.0)
io = IO::Memory.new
# To see what io contains, use to_s:
min1.to_s(io).to_s # => "gold, 42.0"
# END: p1

# Exceptions:
class CoolException < Exception
end

raise CoolException.new("Somebody pushed the red button")
# => Somebody pushed the red button (CoolException)

# START: p2
ex = begin
  raise CoolException.new
rescue ex1 : IndexError
  ex1.message
rescue ex2 : CoolException | KeyError
  ex2.message
rescue ex3 : Exception
  ex3.message
rescue # catch any kind of exception
  "an unknown exception"
end # => "ex2"
# END: p2

# START: p3
require "json"
path = "path/to/file"

begin
  if File.exists?(path)
    raw_file = File.read(path)
    map = JSON.parse(raw_file)
    File.write(path, "ok")
    :ok
  end
rescue JSON::ParseException # Parsing error
  raise "Could not parse file"
rescue ex
  raise "Other error: #{ex.message}"
end

# END: p3

# START: p4
class MineralC
  def initialize
    @callbacks = [] of ->
  end

  def after_save(&block)
    @callbacks << block
  end

  # save in database, then execute callbacks
  def save
    # save

  rescue ex
    p "Exception occurred: #{ex.message}"
  else
    @callbacks.each &.call
  end
end

min = MineralC.new
min.after_save { puts "Save in DB successful" }
min.after_save { puts "Logging save" }
min.after_save { puts "Replicate save to failover node" }
min.save # =>
# Save in DB successful
# Logging save
# Replicate save to failover node
# END: p4

# START: p5
struct Vec2D
  property x, y

  def initialize(@x : Int32, @y : Int32)
  end

  def +(other : self)
    Vec2D.new(x + other.x, y + other.y)
  end

  def -
    Vec2D.new(-x, -y)
  end
end

# END: p5

# START: p6
v1 = Vec2D.new(41, 42)
v2 = Vec2D.new(107, 108)
v1 + v2 # => Vec2D(@x=148, @y=150)
# v1 + 78 # Error: no overload matches 'Vec2D#+' with type Int32

v1 = Vec2D.new(42, 108)
-v1 # => Vec2D(@x=-42, @y=-108)
# END: p6
