ptr = Pointer(UInt8).malloc(20) # malloc allocates memory
ptr.value = 42_u8               # 42 here is of type u8
ptr                             # => Pointer(UInt8)@0x271dfe0
ptr.value                       # => 42
ptr.class                       # => Pointer(UInt8)

# Converting between pointer types with as:
# Int8* is the same as Pointer(Int8)
ptr.as(Int8*) # => Pointer(Int8)@0x271dfe0

n = 42
ptr_n = pointerof(n)
ptr_n.value = 108
n # => 108
