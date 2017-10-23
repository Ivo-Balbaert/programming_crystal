class Document
  property name

  def initialize(@name : String)
  end

  protected def print(message)
    puts message
  end

  def printing
    print "Hi, I'm printing #{@name}"
    self.print("This works too: self is a Document")
    doc = Document.new("Taxes")
    doc.print("This also: doc is a Document")
  end
end

class BankAccount < Document
  def printing
    doc = Document.new ("TestDoc")
    doc.print "inside BankAccount"
  end
end

class BankAccount2
  def printing
    doc = Document.new ("TestDoc")
    doc.print "inside BankAccount2"
  end
end

doc2 = Document.new "Audit 2017"
doc2.printing
# => Hi, I'm printing Audit 2017
# => This works too: self is a Document
# => This also: doc is a Document
doc2.print "Audit printing" # => Error: protected method 'print' called for Document
ba = BankAccount.new "test"
ba.printing # => inside BankAccount
ba2 = BankAccount2.new
# ba2.printing # Error: protected method 'print' called for Document
