require 'rspec'
require_relative 'FizzBuzz'

RSpec.describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns the factorial of a positive number' do
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(0)).to eq(1)
    end

    it 'raises an error for a negative number' do
      expect { solver.factorial(-5) }.to raise_error(ArgumentError, 'Factorial is not defined for negative numbers.')
    end
  end
end
