# START: p1
module Crystals
  class Rhombic
  end

  class Triclinic
  end
end

t = Crystals::Rhombic.new
typeof(Crystals) # => Class
# END: p1

# START: p2
require "./trig"
require "./moral"

y = sin(Trig::PI/4)                     # => Error: undefined method 'sin'
y = Trig.sin(Trig::PI/4)                # => Calculating the sin of 0.7853981635
wrongdoing = Moral.sin(Moral::VERY_BAD) # => Assessing the sin of 0
# END: p2

# START: p3
require "./moral2"

y = Math.sin(Math::PI/4)                # => 0.70710678118654746
wrongdoing = Moral.sin(Moral::VERY_BAD) # => Assessing the sin of 0
# END: p3
