# Union types:
arr = ["anadite", "humite", "roselite"]
# mineral = arr[4]? # => returns a value of type String | Nil
if mineral = arr[4]?
  puts "The mineral at index 4 is : #{mineral}"
else
  puts "No mineral at index 4"
end
# => No mineral at index 4
