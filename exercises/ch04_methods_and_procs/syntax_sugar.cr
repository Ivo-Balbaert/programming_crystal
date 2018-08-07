(1..10).map(&.**(3)) # => [1, 8, 27, 64, 125, 216, 343, 512, 729, 1000]
(1..10).map &.**(3)  # => [1, 8, 27, 64, 125, 216, 343, 512, 729, 1000]

langs = %w[Java Go Crystal]

langs.sort_by &.size # => ["Go", "Java", "Crystal"]

langs.map &.split(//)
# => [["J", "a", "v", "a"], ["G", "o"], ["C", "r", "y", "s", "t", "a", "l"]]
langs.map &.split(//).sort
# => [["J", "a", "a", "v"], ["G", "o"], ["C", "a", "l", "r", "s", "t", "y"]]
langs.map &.split(//).sort.reverse
# => [["v", "a", "a", "J"], ["o", "G"], ["y", "t", "s", "r", "l", "a", "C"]]
langs.map &.split(//).sort.reverse.join
# => ["vaaJ", "oG", "ytsrlaC"]
langs.map(&.split(//).sort.reverse.join) # => ["vaaJ", "oG", "ytsrlaC"]
