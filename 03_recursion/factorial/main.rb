# frozen_string_literal: true

# Fatorial class
class Fatorial
  def calculate(x)
    if x.zero?
      raise StandardError
    elsif x == 1
      p 1
    else
      p x * calculate(x - 1)
    end
  end
end
