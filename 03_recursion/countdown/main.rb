# frozen_string_literal: true

# Countdown class
class Countdown
  def calculate(x)
    if x < 1
      nil
    elsif x == 1
      p x
    else
      p x
      calculate(x - 1)
    end
  end
end

Countdown.new.calculate(10)
