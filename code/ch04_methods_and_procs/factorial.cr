# START:p1
def fact(n)
  n == 0 ? 1 : n * fact(n - 1)
end

fact(5) # => 120
# END:p1

fact(-2)
# => Runtime error: Invalid memory access (signal 11) at address 0x7ffbff7fdff8
fact("Crystal") # => Error: undefined method '-' for String
