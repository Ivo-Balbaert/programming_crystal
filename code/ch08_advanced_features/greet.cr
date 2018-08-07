@[Link(ldflags: "#{__DIR__}/greet.o")]

lib LibSay
  fun greet(name : LibC::Char*) : Void
end

LibSay.greet("Ary") # => Hello Ary!
