# Arrays
# START:p1
minerals = ["alunite", "chromium", "vlasovite"]
# creating the same array with another notation:
minerals2 = %w(alunite chromium vlasovite)
typeof(minerals) # => Array(String)
# END:p1

# START:p2
minerals << "wagnerite"
minerals << "muscovite"
minerals 
# => ["alunite", "chromium", "vlasovite", "wagnerite", "muscovite"]
minerals.size # => 5
# END:p2


# START:p3
minerals << 666 
# => Error: no overload matches 'Array(String)#<<' with type Int32
# END:p3

# START:p4
precious_minerals = [] 
# => Error: for empty arrays use '[] of ElementType'
# END:p4

# START:p5
precious_minerals = [] of String
precious_minerals2 = Array(String).new

# END:p5

# indexing
# START:p6
minerals[0]  # => "alunite"
minerals[3]  # => "wagnerite"
minerals[-2] # => "wagnerite"
# => negative indices count from the end, which is -1
# END:p6

# START:p7
minerals[2, 3] # => ["vlasovite", "wagnerite", "muscovite"]
minerals[2..4] # => ["vlasovite", "wagnerite", "muscovite"]
# END:p7

# START:p8
minerals[7] # => Runtime error: Index out of bounds (IndexError)
# END:p8

# START:p9
minerals[7]? # => nil
# END:p9

# START:p10
pseudo_minerals = ["alunite", 'C', 42]
# END:p10

# START:p11
typeof(pseudo_minerals) # => Array(Char | Int32 | String)
# END:p11