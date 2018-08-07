# START: p1
class Document
end

class PDFDocument < Document
  def print
    puts "PDF header"
  end
end

class XMLDocument < Document
  def print
    puts "XML header"
  end
end

class Report
  getter doc

  def initialize(@name : String, @doc : Document)
  end
end

salq4 = Report.new "Salary Report Q4", PDFDocument.new
taxQ1 = Report.new "Tax Report Q1", XMLDocument.new
# END: p1

if 4 < 5
  d = PDFDocument.new
else
  d = XMLDocument.new
end
typeof(d) # => Document

# START: p2
abstract class Document
end

salq4.doc.print # => PDF header
# END: p2
