puts "Number of command line arguments: #{ARGV.size}" # => (1)
ARGV.each_with_index do |arg, i|
  puts "Argument #{i}: #{arg}" # => (2)
end
ARGV                                  # => (3)
p "Executable name: #{PROGRAM_NAME}"  # => (4)
p "Path to source file: #{__FILE__}"  # => (5)
p "Folder of source file: #{__DIR__}" # => (6)

# (1) Number of command line arguments: 3
# (2)
# Argument 0: 78
# Argument 1: 56
# Argument 2: 12
# (3) ["78", "56", "12"]
# (4) "Executable name: /$HOME/.cache/crystal/crystal-run-argv.tmp"
# or (4) "Executable name: ./argv"
# (5) "Path to source file:
#  /$HOME/crystal/Book/code/types_and_control_flow/argv.cr"
# (6) "Folder of source file: /$HOME/crystal/Book/code/types_and_control_flow"
