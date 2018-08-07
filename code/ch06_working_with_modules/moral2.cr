module Moral
  extend self
  VERY_BAD = 0
  BAD      = 1

  def sin(badness)
    puts "Assessing the sin of #{badness}"
  end
end
