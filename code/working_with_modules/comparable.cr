class Person
  include Comparable(Person)

  getter name, age

  def initialize(@name : String, @age : Int32)
  end

  def <=>(other : self)     # other must be of type self, which is Person
    if self.age < other.age # here self is the current Person object
      -1
    elsif self.age > other.age
      1
    else # == case
      0
    end
  end
end

john = Person.new("John", 42)
martha = Person.new("Martha", 74)
diana = Person.new("Diana", 42)
john > martha # => false
john == diana # => true
