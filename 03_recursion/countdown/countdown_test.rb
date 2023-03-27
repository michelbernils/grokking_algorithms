require 'minitest/autorun'
require_relative 'main'

class CountdownTest < Minitest::Test
  def test_calculate_countdown
    output = capture_io do
      Countdown.new.calculate(5)
    end
    assert_equal "5\n4\n3\n2\n1\n", output.join
  end

  def test_calculate_single_number
    output = capture_io do
      Countdown.new.calculate(1)
    end
    assert_equal "1\n", output.join
  end

  def test_calculate_zero
    output = capture_io do
      Countdown.new.calculate(0)
    end
    assert_equal "", output.join
  end
end