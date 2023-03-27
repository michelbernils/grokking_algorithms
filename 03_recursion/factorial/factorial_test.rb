# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main'

# Fatorial test class
class TestFatorial < Minitest::Test
  def setup
    @fatorial = Fatorial.new
  end

  def test_calculate_with_1
    assert_output(/1\n/) do
      @fatorial.calculate(1)
    end
  end

  def test_calculate_with_5
    assert_output(/120\n/) do
      @fatorial.calculate(5)
    end
  end

  def test_calculate_with_zero
    assert_raises(StandardError) do
      @fatorial.calculate(0)
    end
  end
end
