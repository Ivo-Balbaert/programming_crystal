lib LibC
  fun rand : UInt32
  fun sleep(seconds : UInt32) : UInt32
  fun atoi(str : UInt8*) : Int32
  fun printf(format : UInt8*, ...) : Int32
  fun cos(val : Float64) : Float64
  fun exit(status : Int32) : NoReturn
end

LibC.rand             # => 1804289383
LibC.sleep(1_u32)     # => wait 1 second
LibC.atoi("28").class # => Int32

a = 1
b = 2
LibC.printf "%d + %d = %d\n", a, b, a + b # => 1 + 2 = 3
LibC.cos(1.5)                             # => 0.0707372016677029

LibC.exit(0) # => NoReturn
puts "hello" # this will never be executed
