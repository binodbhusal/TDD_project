require 'rspec'
require_relative '../solver'

describe Solver do
  context '#factorial' do
    it 'returns 1 for factorial of 0' do
      expect(Solver.factorial(0)).to eq(1)
    end
    it 'returns 1 for factorial of 1' do
      expect(Solver.factorial(1)).to eq(1)
    end
    it 'returns correct factorial for positive integers' do
      expect(Solver.factorial(5)).to eq(120)
      expect(Solver.factorial(10)).to eq(3_628_800)
    end
    it 'raise an exception for negative integer' do
      expect { Solver.factorial(-3) }.to raise_error(ArgumentError)
    end
  end

  context '#reverse' do
    it 'returns "olleh" for "hello"' do
      expect(Solver.reverse("hello")).to eql "olleh"
    end

    it 'returns "dlrow" for "world"' do
      expect(Solver.reverse("world")).to eql "dlrow"
    end
  end

  context '#fizzbuzz' do
    it 'returns "fizz" for 3' do
      expect(Solver.fizzbuzz(3)).to eql "fizz"
    end

    it 'returns "buzz" for 5' do
      expect(Solver.fizzbuzz(5)).to eql "buzz"
    end

    it 'returns "fizzbuzz" for 15' do
      expect(Solver.fizzbuzz(15)).to eql "fizzbuzz"
    end
  end
end
