# START:p1
class Mineral
  getter name : String
  getter hardness : Float64
  getter crystal_struct : String

  def initialize(@name, @hardness, @crystal_struct)
  end
end

def mineral_with_crystal_struct(crstruct, minerals)
  minerals.find { |m| m.crystal_struct == crstruct }
end

def longest_name(minerals)
  minerals.map { |m| m.name }.max_by { |name| name.size }
end

minerals = [
  Mineral.new("gold", 1.0, "cubic"),
  Mineral.new("topaz", 8.0, "orthorombic"),
  Mineral.new("apatite", 5.0, "hexagonal"),
  Mineral.new("wolframite", 4.5, "monoclinic"),
  Mineral.new("calcite", 3.0, "trigonal"),
  Mineral.new("diamond", 10.0, "cubic"),
]

min = mineral_with_crystal_struct("hexagonal", minerals)
if min
  puts "#{min.crystal_struct} - #{min.name} - #{min.hardness}"
else
  puts "No mineral found with this crystal structure!"
end
# => hexagonal - apatite - 5

min = mineral_with_crystal_struct("triclinic", minerals)
if min
  puts "#{min.crystal_struct} - #{min.name} - #{min.hardness}"
else
  puts "No mineral found with this crystal structure!"
end
# => "No mineral found with this crystal structure!"

puts longest_name(minerals)
# => wolframite
# END:p1

# crystal build 3.5_mineral.cr --release
# $ time ./3.5_mineral  # => real 0.002 s
