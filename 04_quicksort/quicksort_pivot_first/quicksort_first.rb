# frozen_string_literal: true

# Quicksort class
class QuicksortFirst
  def sort(array)
    return array if array.length <= 1

    pivot = array.first

    left = []
    right = []

    array.each_with_index do |num, i|
      next if i.zero?

      if num < pivot
        left << num
      else
        right << num
      end
    end

    p sort(left) + [pivot] + sort(right)
  end
end
