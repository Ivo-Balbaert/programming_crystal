ch = Channel(Int32).new
total_lines = 0
files = Dir.glob("*.txt")

files.each do |f|
  spawn do
    lines = File.read_lines(f).size
    ch.send lines
  end
end

files.size.times do
  total_lines += ch.receive
end

puts "Total number of lines in text files: #{total_lines}"
# => Total number of lines in text files: 7
