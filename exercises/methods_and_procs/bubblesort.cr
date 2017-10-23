# Array#dup returns a new array with the same elements
# Object#tap passes its object into the given block and,
# after the block finishes, returns the object

def bubblesort(input)
  input.dup.tap do |arr|
    arr.each_index do |i|
      (arr.size - 1).downto(i) do |j|
        # swap consecutive elements:
        arr[j], arr[j - 1] = arr[j - 1], arr[j] if yield arr[j - 1], arr[j]
      end
    end
  end
end

def bubblesort_ascending(input)
  bubblesort(input) { |a, b| a > b }
end

def bubblesort_descending(input)
  bubblesort(input) { |a, b| a < b }
end

input = [78, -56, 108, 42, 0]
p bubblesort_ascending(input)  # => [-56, 0, 42, 78, 108]
p bubblesort_descending(input) # => [108, 78, 42, 0, -56]
