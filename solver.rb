# Solver is a utility class that provides various mathematical operations.
# It currently supports calculating the factorial of a positive integer.
class Solver
  # Calculates the factorial of a positive integer.
  def self.factorial(number)
    raise ArgumentError, 'Factorial is not defined for negative numbers' if number.negative?
    return 1 if number.zero?

    result = 1
    (1..number).each do |num|
      result *= num
    end
    result
  end

  def self.reverse(input)
    input.reverse
  end

  def self.fizzbuzz(input)
    return 'fizzbuzz' if (input % 3).zero? && (input % 5).zero?
    return 'fizz' if (input % 3).zero?
    return unless (input % 5).zero?

    'buzz'
  end
end
