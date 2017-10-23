# START:code
str = "Crystal"
ix = str.index('z')
puts str[ix]
# END:code

# Ruby runtime error:  $ ruby error.cr
# error.cr:3:in `[]': no implicit conversion from nil to integer (TypeError)
# 	from error.cr:3:in `<main>'

# Crystal compile time error: $ crystal error.cr
# Error in error.cr:3: no overload matches 'String#[]' with type (Int32 | Nil)
# Overloads are:
#  - String#[](start : Int, count : Int)
#  - String#[](regex : Regex, group)
#  - String#[](index : Int)
#  - String#[](range : Range(Int, Int))
#  - String#[](str : String | Char)
#  - String#[](regex : Regex)
# Couldn't find overloads for these types:
#  - String#[](Nil)

# how to remedy:
# START:sol
if ix
  puts str[ix]
end
# END:sol
