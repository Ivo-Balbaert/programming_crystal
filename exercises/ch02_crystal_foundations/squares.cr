# ary = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
ary = (1..10).to_a
ary.each do |i|
  if i.odd?
    p "The square of #{i} is #{i * i}"
  end
end
# =>
# "The square of 1 is 1"
# "The square of 3 is 9"
# "The square of 5 is 25"
# "The square of 7 is 49"
# "The square of 9 is 81"
