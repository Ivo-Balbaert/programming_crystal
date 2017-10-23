class Document
  property name

  def initialize(@name : String)
  end

  private def print(message)
    puts message
  end

  def printing
    print "Hi, I'm printing #{@name}"
    # self.print "Printing with self does not work"
    # => Error: private method 'print' called for Document
  end
end

class PDFDocument < Document
  def printing
    super
    print "End printing PDFDocument"
  end
end

doc = Document.new("Salary Report Q4 2018")
doc.printing # => Hi, I'm printing Salary Report Q4 2018

pdoc = PDFDocument.new("Financial Report Q4 2018")
pdoc.printing # =>
# Hi, I'm printing Financial Report Q4 2018
# End printing PDFDocument
# doc.print("test") # => Error: private method 'print' called for Document
