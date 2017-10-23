def pname(name)
  3.times do |i|
    puts "#{name} - #{i}"
  end
end

spawn pname "spawned" # started on another fiber (in background)
pname("normal")       # started by main fiber
Fiber.yield
# =>
# normal - 0
# normal - 1
# normal - 2
# spawned - 0
# spawned - 1
# spawned - 2
