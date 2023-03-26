# frozen_string_literal: true

# Class for selection sort algo
class SelectionSort
  attr_accessor :array

  def initialize(array:)
    @array = array
  end

  def find_min
    smallest = @array[0]
    smallest_index = 0

    for i in 1..(@array.length - 1)
      if @array[i] < smallest
        smallest = @array[i]
        smallest_index = i
      end
    end

    smallest_index
  end

  def sort
    new_array = []

    for i in 0..(@array.length - 1)
      smallest = find_min
      new_array << @array.delete_at(smallest)
    end

    p new_array
  end
end
