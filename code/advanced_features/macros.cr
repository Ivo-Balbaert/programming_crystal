# START: p1
class Mineral
  def initialize(@name : String, @hardness : Float64)
  end

  def name
    @name
  end

  def hardness
    @hardness
  end
end

min1 = Mineral.new("gold", 2.5)
"#{min1.name} - #{min1.hardness}" # => "gold - 2.5"
# END: p1

# START: p2
macro get
  def name
    @name
  end
end

class Mineral
  def initialize(@name : String, @hardness : Float64)
  end

  get

  def hardness
    @hardness
  end
end

min1 = Mineral.new("gold", 2.5)
"#{min1.name} - #{min1.hardness}" # => "gold - 2.5"
# END: p2

# START: p3
macro get(prop)
  def {{prop}}
    @{{prop}}
  end
end

class Mineral
  def initialize(@name : String, @hardness : Float64)
  end

  get name
  get hardness
end

min1 = Mineral.new("gold", 2.5)
"#{min1.name} - #{min1.hardness}" # => "gold - 2.5"
# END: p3

# START: p4
macro get(*props)
  {% for prop in props %}
    def {{prop}}
      @{{prop}}
    end
  {% end %}
end

class Mineral
  def initialize(@name : String, @hardness : Float64)
  end

  get name, hardness
end

min1 = Mineral.new("gold", 2.5)
"#{min1.name} - #{min1.hardness}" # => "gold - 2.5"
# END: p4

# START: p5
record Mineral, name : String, hardness : Float64

min1 = Mineral.new("gold", 2.5)
"#{min1.name} - #{min1.hardness}" # => "gold - 2.5"
# END: p5

# START: p6
class Mineral
  getter name, hardness

  def initialize(@name : String, @hardness : Float64)
  end

  macro method_missing(call)
    print "Unknown method: ", {{call.name.id.stringify}},
          " with ", {{call.args.size}}, " argument(s): ",
          {{call.args}}, '\n'
  end
end

min1 = Mineral.new("gold", 2.5)
min1.alien_planet?(42)
# => Unknown method: alien_planet? with 1 argument(s): [42]
# END: p6
