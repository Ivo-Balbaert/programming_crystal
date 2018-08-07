def sample(n)
  res = [] of Float64
  n.times do
    res << rand
  end
  res
end

sample 5
# Output for example:
# [0.42584667462080578, 0.22326633752060512, 0.68064089397146432, 0.57965191049681586, 0.63821448407129489]
