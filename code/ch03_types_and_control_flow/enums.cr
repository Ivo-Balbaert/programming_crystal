# START: p1
enum Direction
  North # value 0
  East  # value 1
  South # value 2
  West  # value 3
end

Direction::South       # South
Direction::South.value # => 2
# END: p1

# Direction::Eest # Error: undefined constant Direction::Eest
:gold
:goold
