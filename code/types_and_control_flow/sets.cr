# Set literal
set = Set{41, 42, 43} # => Set{41, 42, 43}
set.class             # => Set(Int32)

# The above is equivalent to
set = Set(Int32).new
set << 42
set << 41
set << 43
set << 41
set                                # => Set{42, 41, 43}
Set{42, 41, 43} == Set{41, 42, 43} # => true
