# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'binary_search'

# BinarySearcH Test class
class BinarySearchTest < Minitest::Test
  def setup
    @array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    @search = BinarySearch.new(array: @array)
  end

  def test_search_for_existing_number
    assert_output(/The number was found: 5/) { @search.search(5) }
  end

  def test_search_for_nonexistent_number
    assert_output(/Number not found/) { @search.search(11) }
  end
end
