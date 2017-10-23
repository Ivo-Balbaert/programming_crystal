# START:p1
hardness = 5.25
if 0 < hardness < 5
  puts "softer than apatite"
elsif hardness < 8
  puts "harder than apatite, softer than topaz"
else
  puts "topaz or harder!"
end
# => harder than apatite, softer than topaz
# END:p1

# if as an expression
# START:p2
output = if 0 < hardness < 5
           "softer than apatite"
         elsif hardness < 8
           "harder than apatite, softer than topaz"
         else
           "topaz or harder!"
         end
output # => harder than apatite, softer than topaz
# END:p2

# if as a suffix
# START:p3
output = "softer than topaz" if hardness < 8 # => softer than topaz
# END:p3

# unless
# START:p4
output = "softer than topaz" unless hardness >= 8
output # => softer than topaz
# END:p4

# case
# START:p5
output = case hardness
         when 4
           "hard as fluorite"
         when 7
           "hard as quartz"
         when 10
           "hard as diamond"
         else
           "can't say how hard"
         end # => "can't say how hard"
# END:p5

# START:p6
output = case
         when 0 < hardness < 5
           "softer than apatite"
         when hardness < 8
           "harder than apatite, softer than topaz"
         else
           "topaz or harder!"
         end # => harder than apatite, softer than topaz"
# END:p6

# simple loops:
# START:p7
# Int#times
5.times do
  p "Hi"
  p "Low"
end
# same as:
5.times { p "Hi"; p "Low" }
# END:p7

# START:p8
# Range#each
('a'..'d').each do |i|
  puts "Item: #{i}"
end
# produces:
# Item: a
# Item: b
# Item: c
# Item: d
# END:p8

# infinite loop with break:
# START:p9
n = 1
loop do
  puts "a mighty crystal"
  n += 1
  break if n == 3
end
# => a mighty crystal
# END:p9

# while
# START:p10
a = 1
while (a += 1) < 10
  if a == 3
    next
  elsif a > 6
    break
  end
  puts a
end # => 2, 4, 5 and 6 on successive lines
# END:p10
