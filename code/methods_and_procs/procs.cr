# Yield:
def testing
  puts "at top of method"
  yield
  puts "back inside method"
  yield
  puts "at end of method"
end

testing do
  puts "in code block"
end

# =>
# at top of method
# in code block
# back inside method
# in code block
# at end of method

# Yield with parameters:
# START: p1
def testing
  puts "at top of method"
  yield 1
  puts "back inside method"
  yield 2
  puts "at end of method"
end

testing do |n|
  puts "in code block #{n}"
end

# =>
# at top of method
# in code block 1
# back inside method
# in code block 2
# at end of method
# END:p1

# START: p2
def testing(&block)
  puts "at top of method"
  block.call
  puts "back inside method"
  block.call
  puts "at end of method"
end

testing do
  puts "in code block"
end
# =>
# at top of method
# in code block
# back inside method
# in code block
# at end of method
# END: p2

# START: p3
langs = %w[Java Go Crystal]
langs.map { |lang| lang.upcase } # (1) => ["JAVA", "GO", "CRYSTAL"]
langs.map &.upcase               # (2) => ["JAVA", "GO", "CRYSTAL"]
# END: p3

# START: p4
nums = [42, 43, 44]
nums.map { |num| num + 2 } # (1) => [44, 45, 46]
nums.map &.+(2)            # (2) => [44, 45, 46]
# END: p4

# START: p5
fn = ->(n : Int32, m : Int32) { n + m }
typeof(fn)       # => Proc(Int32, Int32, Int32)
fn.call(42, 108) # => 150
# END: p5

# START: p6
fn = Proc(Int32, Int32, Int32).new { |n, m| n + m }
fn.call(42, 108) # => 150
# END: p6

# START: p7

def add(n, m)
  n + m
end

fn = ->add(Int32, Int32)
fn.call(42, 108) # => 150
# END: p7

# START: p8
n = 42
fn = ->(m : Int32) { n + m }
fn.call(108) # => 150
n = 20
fn.call(108) # => 128
# END: p8

# START: p9
def capture(&block : Int32 -> Int32)
  block
end

n = 42
proc = capture { |m| n + m }
proc.call(108) # => 150
n = 20
proc.call(108) # => 128
# END: p9
