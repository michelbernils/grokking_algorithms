# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'quicksort_middle'

# Quicksort with pivot in the middle test
class QuicksortMiddleTest < Minitest::Test
  def test_sort
    sorter = QuicksortMiddle.new

    assert_equal [], sorter.sort([])
    assert_equal [1], sorter.sort([1])
    assert_equal [1, 2, 3], sorter.sort([3, 1, 2])
    assert_equal [-3, 0, 2, 4, 5], sorter.sort([2, 4, 0, 5, -3])
  end
end
