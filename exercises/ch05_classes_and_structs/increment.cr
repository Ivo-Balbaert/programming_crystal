class Increment
  getter amount

  def initialize (@amount = 0)
  end

  def increment
    @amount += 1
  end

  def increment(inc_amount)
    @amount += inc_amount
  end
end

inc = Increment.new
inc.increment
inc.amount # => 1
inc.increment(5)
inc.amount # => 6
