require 'rspec'
require_relative '../solver'

RSpec.describe Solver do
  describe '#factorial' do
    context 'when input is 0' do
      it 'returns 1' do
        expect(described_class.factorial(0)).to eq(1)
      end
    end
    context 'when input is 1' do
      it 'returns 1' do
        expect(described_class.factorial(1)).to eq(1)
      end
    end
    context 'when input is a positive integer' do
      it 'returns factorial of N' do
        expect(described_class.factorial(5)).to eq(120)
        expect(described_class.factorial(10)).to eq(3_628_800)
      end
    end
    context 'when input is a negative integer' do
      it 'raise an exception for negative integer' do
        expect { described_class.factorial(-3) }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#reverse' do
    it 'returns "olleh"' do
      expect(described_class.reverse('hello')).to eql 'olleh'
    end

    it 'returns "dlrow"' do
      expect(described_class.reverse('world')).to eql 'dlrow'
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz"' do
      expect(described_class.fizzbuzz(3)).to eql 'fizz'
    end

    it 'returns "buzz"' do
      expect(described_class.fizzbuzz(5)).to eql 'buzz'
    end

    it 'returns "fizzbuzz"' do
      expect(described_class.fizzbuzz(15)).to eql 'fizzbuzz'
    end
  end
end
