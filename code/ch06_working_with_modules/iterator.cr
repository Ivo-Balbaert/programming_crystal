n = 0
inc = Iterator.of do
  n += 1
  n
end

inc.next # => 1
inc.next # => 2
inc.next # => 3

n = 0
m = 1
fib = Iterator.of { ret = n; n = m; m += ret; ret }

fib
  .select { |x| x.even? }
  .first(10)
  .to_a # => [0, 2, 8, 34, 144, 610, 2584, 10946, 46368, 196418]
