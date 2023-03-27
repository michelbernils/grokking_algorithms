# frozen_string_literal: true

# Greeting class
class Greeting
  def greet(name)
    p "Hello #{name}, have a nice day."
    greet2(name)
    p 'Preparing to say good-bye'
    tchau
  end

  def greet2(name)
    p "How are you, #{name}"
  end

  def tchau
    p 'Bye Bye'
  end
end
