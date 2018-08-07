class Employee
  getter name
  property age

  def initialize(@name : String, @age : Int32)
  end
end

e = Employee.new("Jones", 42)
e.name                  # => "Jones" : String
e.age                   # => 42 : Int32
e.age += 1              # => 43 : Int32
e.name = "Other person" # undefined method 'name=' for Employee
