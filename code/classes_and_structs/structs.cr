# START: p1
struct User
  property name, age

  def initialize(@name : String, @age : Int32)
  end

  def print
    puts "#{age} - #{name}"
  end
end

d = User.new("Donald", 42)
d.name # => Donald
d.age = 78
d.print # => 78 - Donald
# END: p1

# START: p2
def no_change(user)
  user.age = 50
end

def change(user)
  user.age = 50
  user
end

d = User.new("Donald", 78)
d.print # => 78 - Donald
no_change(d)
d.print # => 78 - Donald
d = change(d)
d.print # => 50 - Donald
# END: p2
