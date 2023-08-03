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
    if input % 3 == 0 && input % 5 == 0
      return "fizzbuzz"
    end
    if input % 3 == 0
      return "fizz"
    end
    if input % 5 == 0
      return "buzz"
    end
  end

end
