require "benchmark"

ARY = [1..100]

def index
  ARY[-1]
end

def last
  ARY.last
end

Benchmark.ips do |x|
  x.report("Array#[-1]") { index }
  x.report("Array#last") { last }
end

# Results:
# Array#[-1]  21.17M ( 47.23ns) (± 3.89%)  1.49× slower
# Array#last  31.64M (  31.6ns) (± 3.29%)       fastest
