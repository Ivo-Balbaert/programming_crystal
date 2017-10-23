# Inheriting constructor
# START: p1
class Document
  property name

  def initialize(@name : String)
  end

  def print
    puts "Hi, I'm printing #{@name}"
  end
end

class PDFDocument < Document
end

doc = PDFDocument.new("Salary Report Q4 2018")
doc.print # => Hi, I'm printing Salary Report Q4 2018
# END: p1

# START: p2
class PDFDocument < Document
  def initialize(@name : String, @company : String)
  end

  def print
    super
    puts "From company #{@company}"
  end
end

# doc = PDFDocument.new("Salary Report Q4 2018")
# => Error: wrong number of arguments for 'PDFDocument.new' (given 1, expected 2)
doc = PDFDocument.new("Salary Report Q4 2018", "ACME")
doc.print

# => Hi, I'm printing Salary Report Q4 2018
#    From company ACME
# END: p2

# START: p3
class PDFDocument < Document
  def initialize(@name : String, @company : String)
  end

  def print(date : Time)
    puts "Printing #{@name}"
    puts "From company #{@company} at date #{date}"
  end
end

doc = PDFDocument.new("Salary Report Q4 2018", "ACME")
doc.print(Time.now)

# => Printing Salary Report Q4 2018
#    From company ACME at date 2017-05-25 12:12:45 +0200
# END: p3

# START: p4
abstract class Shape
  abstract def area
  abstract def perim
end

class Rect < Shape
  def initialize(@width : Int32, @height : Int32)
  end

  def area
    @width * @height
  end

  def perim
    2 * (@width + @height)
  end
end

s = Shape.new       # => can't instantiate abstract class Shape
Rect.new(3, 6).area # => 18
# END: p4
