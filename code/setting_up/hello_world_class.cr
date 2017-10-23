class HelloWorld
  def initialize(@name : String)
  end

def greet
    puts "Hello, #{@name}!"
  end
end

hw = HelloWorld.new("world")
hw.greet # => Hello, world!
