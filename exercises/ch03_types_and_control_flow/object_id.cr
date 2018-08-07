# Strings are immutable
s = "Crystal" # => "Crystal"        : String
p s.object_id # => 4861712          : UInt64
t = "Crystal" # => "Crystal"        : String
p t.object_id # => 4861712          : UInt64
p s == t      # => true
p s === t     # => true

# 42.object_id # => undefined method 'object_id' for Int32
