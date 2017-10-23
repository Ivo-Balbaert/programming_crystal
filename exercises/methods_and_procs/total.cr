def total(*items)
  total = 0
  items.each do |value|
    total += value
  end
  total
end

total(1, 2, 3)      # => 6     # type of items is Tuple(Int32, Int32, Int32)
total(1, 2, 3, 4.5) # => 10.5  # type of items is Tuple(Int32, Int32, Int32, Float64)

def total(*items, initial = 0)
  total = initial
  items.each do |value|
    total += value
  end
  total
end

total(1, 2, 3)              # => 6
total(1, 2, 3, initial: 10) # => 16
