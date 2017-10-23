class Sequence
  include Enumerable(Int32)

  def initialize(@top : Int32)
  end

  def each
    0.upto(@top) do |num|
      yield num
    end
  end
end

seq = Sequence.new(7)
# using some methods of module Enumerable:
seq.to_a               # => [0, 1, 2, 3, 4, 5, 6, 7]
seq.select &.even?     # => [0, 2, 4, 6]
seq.map { |x| x ** 2 } # => [0, 1, 4, 9, 16, 25, 36, 49]
