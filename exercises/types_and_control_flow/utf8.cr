"hi 猫".each_char do |char|
  print char
end # => hi 猫
puts
"hi 猫".each_codepoint do |pnt|
  print pnt; print "-"
end
puts # => 104-105-32-29483-
"hi 猫".each_byte do |byte|
  print byte; print "-"
end # => 104-105-32-231-140-171-
