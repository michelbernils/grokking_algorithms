# frozen_string_literal: true

require_relative 'main'
require 'minitest/autorun'

# Greeting test class
class TestGreeting < Minitest::Test
  def setup
    @greeting = Greeting.new
  end

  def test_greet
    expected_output = "\"Hello John, have a nice day.\"\n\"How are you, John\"\n\"Preparing to say good-bye\"\n\"Bye Bye\"\n"
    assert_output(expected_output) do
      @greeting.greet("John")
    end
  end

  def test_greet2
    assert_output(/How are you, John/) do
      @greeting.greet2("John")
    end
  end

  def test_tchau
    assert_output(/Bye Bye/) do
      @greeting.tchau
    end
  end
end
