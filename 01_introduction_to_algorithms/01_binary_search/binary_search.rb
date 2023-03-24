# frozen_string_literal: true

# Class containing all the logic of a binary tree
class BinarySearch
  def initialize(array:)
    @array = array
  end

  def search(target)
    low = 0
    high = @array.length - 1

    while low <= high
      pivot = (low + high) / 2
      guessed_number = @array[pivot]

      if guessed_number == target
        return p "The number was found: #{guessed_number}"
      elsif guessed_number > target
        high = pivot - 1
      else
        low = pivot + 1
      end
    end

    p 'Number not found'
  end
end
