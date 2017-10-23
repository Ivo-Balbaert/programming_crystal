alias PInt32 = Pointer(Int32)

module JSON
  alias Type = Nil |
               Bool |
               Int64 |
               Float64 |
               String |
               Array(Type) |
               Hash(String, Type)
end
