require 'calculator'

describe Calculator, ': Sobre a calculadora' do
  context '#sum' do
    subject(:calc) { described_class.new }

    it 'with positive numbers' do
      result = calc.sum(5, 7)
      expect(result).to equal(12)
    end

    it 'with negative and positive numbers' do
      result = calc.sum(-5, 7)
      expect(result).to equal(2)
    end

    it 'with negative numbers' do
      result = calc.sum(-5, -7)
      expect(result).to equal(-12)
    end
  end
end
