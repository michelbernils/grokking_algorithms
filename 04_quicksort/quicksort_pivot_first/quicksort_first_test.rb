# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'quicksort_first'

class QuicksortFirstTest < Minitest::Test
  def test_sort
    sorter = QuicksortFirst.new

    assert_equal [], sorter.sort([])
    assert_equal [1], sorter.sort([1])
    assert_equal [1, 2, 3], sorter.sort([3, 1, 2])
    assert_equal [-3, 0, 2, 4, 5], sorter.sort([2, 4, 0, 5, -3])
    assert_equal %w[a b c d e f], sorter.sort(%w[e b a f d c])
  end

  def test_sort_duplicates
    sorter = QuicksortFirst.new

    assert_equal [1, 2, 2, 3], sorter.sort([2, 3, 2, 1])
    assert_equal %w[a b b c c c d], sorter.sort(%w[a b c b d c c])
  end

  def test_sort_random
    sorter = QuicksortFirst.new
    random_array = Array.new(100) { rand(1..100) }
    sorted_array = random_array.sort

    assert_equal sorted_array, sorter.sort(random_array)
  end
end
