require "benchmark"

N = 100_000

Benchmark.bm do |x|
  x.report("String#+") do
    concat
  end

  x.report("String.build") do
    build
  end
end

def concat
  str = ""
  N.times do |i|
    str += "#{i}"
  end
end

def build
  String.build do |str|
    N.times do |i|
      str << i
    end
  end
end

# Results with ips:
#     String#+   0.07  ( 14.66s ) (± 0.00%) 1569.57× slower
# String.build 107.07  (  9.34ms) (± 2.20%)         fastest

# Reults with bm:
#                    user     system      total        real
# String#+       10.140000   3.800000   13.940000 (  9.552760)
# String.build   0.010000    0.000000   0.010000  (  0.010519)
