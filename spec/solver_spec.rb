# frozen_string_literal: true

require 'rspec'
require_relative '../solver'

RSpec.describe Solver do
  describe '#factorial' do
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
end
