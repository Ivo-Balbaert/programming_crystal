def add(n, m)
  n + m
end

tpl = {42, 108}
# add tpl  # => Error: wrong number of arguments for 'add' (given 1, expected 2)
add *tpl # => 150

ntpl = {n: 42, m: 108}
add **ntpl # => 150

#


def ret_named_tuple(a, **ntpl)
  # Return the captured named arguments as a NamedTuple
  ntpl
end

ret_named_tuple 1, y: 2, z: 3    # => {y: 2, z: 3}
ret_named_tuple y: 2, a: 1, z: 3 # => {y: 2, z: 3}
