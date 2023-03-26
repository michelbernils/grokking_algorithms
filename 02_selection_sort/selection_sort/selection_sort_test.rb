# frozen_string_literal: true

require_relative 'selection_sort'
require 'test/unit'

# Selection Sort test cases
class SelectionSortTest < Test::Unit::TestCase
  def test_sort_empty_array
    ss = SelectionSort.new(array: [])
    assert_equal([], ss.sort)
  end

  def test_sort_array_with_one_element
    ss = SelectionSort.new(array: [5])
    assert_equal([5], ss.sort)
  end

  def test_sort_array_with_multiple_elements
    ss = SelectionSort.new(array: [5, 3, 1, 4, 2])
    assert_equal([1, 2, 3, 4, 5], ss.sort)
  end
end
