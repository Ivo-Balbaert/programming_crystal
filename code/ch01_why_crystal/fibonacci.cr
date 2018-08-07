# START:code
def fib(n)
  return n if n <= 1
  fib(n - 1) + fib(n - 2)
end

sum = 0
(1..42).each do |i|
  sum += fib(i)
end

puts sum  # => 701408732
# END:code

# ivo@ivo-SATELLITE-L50D-B:~/crystal$ time ruby fibonacci.cr

# 102334155

# real	3m44.437s
# user	3m43.848s
# sys	0m0.048s


# 18.5 x
# ivo@ivo-SATELLITE-L50D-B:~/crystal$ time crystal fibonacci.cr
# 102334155

# real	0m12.149s
# user	0m12.044s
# sys	0m0.356s


# 19,5 x
# ivo@ivo-SATELLITE-L50D-B:~/crystal$ crystal build fibonacci.cr
# ivo@ivo-SATELLITE-L50D-B:~/crystal$ ls -l fib*
# -rwxrwxr-x 1 ivo ivo 453288 Jan  3 10:45 fib
# -rwxrwxr-x 1 ivo ivo 827088 Jan  4 11:48 fibonacci
# -rw-rw-r-- 1 ivo ivo    100 Jan  4 11:45 fibonacci.cr
# -rw-rw-r-- 1 ivo ivo    111 Jan  3 10:43 fib.cr
# ivo@ivo-SATELLITE-L50D-B:~/crystal$ time ./fibonacci
# 102334155

# real	0m11.536s
# user	0m11.524s
# sys	0m0.000s


# 21 x
# ivo@ivo-SATELLITE-L50D-B:~/crystal$ crystal build --release fibonacci.cr
# ivo@ivo-SATELLITE-L50D-B:~/crystal$ ls -l fib*
# -rwxrwxr-x 1 ivo ivo 453288 Jan  3 10:45 fib
# -rwxrwxr-x 1 ivo ivo 453288 Jan  4 11:50 fibonacci
# -rw-rw-r-- 1 ivo ivo    100 Jan  4 11:45 fibonacci.cr
# -rw-rw-r-- 1 ivo ivo    111 Jan  3 10:43 fib.cr
# ivo@ivo-SATELLITE-L50D-B:~/crystal$ time ./fibonacci
# 102334155

# real	0m10.642s
# user	0m10.636s
# sys	0m0.000s
