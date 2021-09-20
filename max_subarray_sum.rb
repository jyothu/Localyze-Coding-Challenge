# Given a set of numbers, find the subset in which the sum of the elements is the maximum sum.
#
# Example

# Given the set of elements [2, -4, 6, 8, -10, 100, -6, 5]
# The maximum sum subset is: [2, -4, 6, 8, -10, 100, -6, 5]
# Thus, the program must return the position of the first and last element of the subset.
# In this example, the positions 2 and 5, considering the first position with index 0.

def max_subarray_sum(super_array)
  return if super_array.empty?

  max_sum = -Float::INFINITY
  max_sum_ending_here = 0
  subarray_start_index = 0
  subarray_end_index = 0
  new_subarray_start_index = 0

  super_array.each_with_index do |elem, index|
    max_sum_ending_here += elem

    if max_sum_ending_here > max_sum
      max_sum = max_sum_ending_here
      subarray_start_index = new_subarray_start_index
      subarray_end_index = index
    end

    if max_sum_ending_here.negative?
      max_sum_ending_here = 0
      new_subarray_start_index = index + 1
    end
  end

  [subarray_start_index, subarray_end_index]
end
