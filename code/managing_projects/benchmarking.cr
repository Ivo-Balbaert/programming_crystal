# Benchmark.ips:
# START:p1
require "benchmark"

IOM = IO::Memory.new

Benchmark.ips do |x|
  x.report("Appending") do
    append
    IOM.clear
  end

  x.report("Using to_s") do
    to_s
    IOM.clear
  end

  x.report("Interpolation") do
    interpolation
    IOM.clear
  end
end

def append
  IOM << 42
end

def to_s
  IOM << 42.to_s
end

def interpolation
  IOM << "#{42}"
end

# END:p1
# Results Benchmark.ips:
#     Appending  34.06M ( 29.36ns) (± 3.97%)       fastest
#    Using to_s  12.67M ( 78.92ns) (± 7.55%)  2.69× slower
# Interpolation    2.8M (356.75ns) (± 3.84%) 12.15× slower

# START:p2
puts Benchmark.measure {
  10_000_000.times do
    append
  end
}
# END:p2
# => 0.250000   0.030000   0.280000 (  0.276182)

# Benchmark.bm:
# START:p3
Benchmark.bm do |x|
  x.report("Appending bm") do
    IOM.clear
    10_000_000.times do
      append
    end
  end
end
# END:p3
# =>
#                   user     system      total        real
# Appending bm   0.240000   0.000000   0.240000 (  0.242289)
