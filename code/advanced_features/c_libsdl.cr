@[Link("SDL")]
lib LibSDL
  INIT_TIMER = 0x00000001_u32
  INIT_AUDIO = 0x00000010_u32

  fun init = SDL_Init(flags : UInt32) : Int32
end

value = LibSDL.init(LibSDL::INIT_TIMER) # => 0
