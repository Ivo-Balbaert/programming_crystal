int = /\d+/            # + = one or more digits
pat1 = /(.+)gold(.+)/  # searches for gold
pat2 = %r(talc | gold) # searches for talc or gold

str = "carbonantimonygolddiamond"
str =~ pat1 # => 0
$1          # => "carbonantimony"
$2          # => "diamond"

str.match pat1 # =>
# <Regex::MatchData "carbonantimonygolddiamond"
# 1:"carbonantimony" 2:"diamond">
