# START: p1
puts "Before start fiber"
spawn do
  puts "Hello from within fiber"
end
puts "After fiber"
# END: p1

# =>
# Before start fiber
# After fiber

sleep 1.second
# =>
# Before start fiber
# After fiber
# Hello from within fiber

Fiber.yield
# =>
# Before start fiber
# After fiber
# Hello from within fiber
