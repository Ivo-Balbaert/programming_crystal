class Person
  include Comparable(Person)

  getter name, age

  def initialize(@name : String, @age : Int32)
  end

  def <=>(other : self)       # other must be of type self, which is Person
    if self.name < other.name # here self is the current Person object
      -1
    elsif self.name > other.name
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
john == diana # => false
