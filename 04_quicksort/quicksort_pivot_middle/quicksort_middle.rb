# frozen_string_literal: true

# Quicksort class
class QuicksortMiddle
  def sort(array)
    return array if array.length <= 1

    pivot_index = array.length / 2
    pivot = array[pivot_index]

    left = []
    right = []

    array.each_with_index do |num, i|
      next if i == pivot_index
 
      if num < pivot
        left << num
      else
        right << num
      end
    end

    p sort(left) + [pivot] + sort(right)
  end
end
