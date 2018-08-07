# START: p1
class Basic
  def initialize(@name : String)
  end

  def to_s
    @name
  end
end

module Debug
  def who_am_i?
    "#{self.class.name} (\##{self.object_id}): #{self.to_s}"
  end
end

class DVD < Basic
  include Debug
  # ...
end

class BlueRay < Basic
  include Debug
  # ...
end

dv = DVD.new("West End Blues")
br = BlueRay.new("Attack of the Martians")
dv.who_am_i? # => DVD (#40886016): West End Blues
br.who_am_i? # => BlueRay (#40885984): Attack of the Martians
# END: p1

# START: p2

module DebugC
  def who_am_i?
    "#{self.class.name}: #{self.to_s}"
  end
end

class CD < Basic
  extend DebugC
  # ...
end

cd = CD.new("Bach's Cello Suites")
cd.who_am_i? # => Error: undefined method 'who_am_i?' for CD
CD.who_am_i? # => "Class: CD"
# END: p2
