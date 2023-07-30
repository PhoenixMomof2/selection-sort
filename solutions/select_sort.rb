=begin
Input: [3, -1, 5, 2]
Output: [-1, 2, 3, 5]

Sort an Array of numbers using selection sort. The selection sort algorithm
sorts an array by repeatedly finding the minimum element (lowest value) in the
input Array, and then putting it at the correct location in the sorted Array.
=end

def selection_sort(input)
  n = input.length

  (0...n-1).each do |i|
    min_idx = i

    (i+1...n).each do |j|
      min_idx = j if input[j] < input[min_idx]
    end

    # Swap the minimum element with the first unsorted element
    input[i], input[min_idx] = input[min_idx], input[i] if min_idx != i
  end

  input
end

# Test the function
input = [3, -1, 5, 2]
sorted_array = selection_sort(input)
puts sorted_array.inspect # Output: [-1, 2, 3, 5]