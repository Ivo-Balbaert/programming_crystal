
# START:p1
class Mineral
  attr_reader :name, :hardness, :crystal_struct

  def initialize(name, hardness, crystal_struct)
    @name = name
    @hardness = hardness
    @crystal_struct = crystal_struct
  end
end

def mineral_with_crystal_struct(crstruct, minerals)
  minerals.find { |m| m.crystal_struct == crstruct }
end

def longest_name(minerals)
  minerals.map { |m| m.name }.max_by { |name| name.size }
end
# END:p1

# START:p2
minerals = [ 
  Mineral.new("gold", 1, 'cubic'),
  Mineral.new("topaz", 8, 'orthorombic'),
  Mineral.new("apatite", 5, 'hexagonal'),
  Mineral.new("wolframite", 4.5, 'monoclinic'),
  Mineral.new("calcite", 3, 'trigonal'),
  Mineral.new("diamond", 10, 'cubic'),
]

min = mineral_with_crystal_struct('hexagonal', minerals)
puts "#{min.crystal_struct} - #{min.name} - #{min.hardness}"
# => hexagonal - apatite - 5

puts longest_name(minerals)
# => wolframite
# END:p2

# START:p3
# Runtime error:
min = mineral_with_crystal_struct('triclinic', minerals)
puts "#{min.crystal_struct} - #{min.name} - #{min.hardness}"
# 3.5_mineral.rb:39:in `<main>': undefined method 'crystal_struct' 
# for nil:NilClass (NoMethodError)
# END:p3

# $ time ruby 3.5_mineral.rb  # => real 0.087 s

