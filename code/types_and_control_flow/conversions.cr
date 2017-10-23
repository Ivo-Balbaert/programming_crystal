# "99.999".to_i # => Runtime error: Invalid Int32: 99.999 (ArgumentError)

var = 3.1415
var.to_i # => 3

var1 = 42
var2 = "7"
# var1 + var2 # Error: no overload matches 'Int32#+' with type Strin
var1 + var2.to_i # => 49
var1.to_s + var2 # => "427"

var1.to_f # => 42.0
var2.to_f # => 7.0

var3 = "crystal"
# var3.to_i  # => Runtime error: Invalid Int32: crystal (ArgumentError)
