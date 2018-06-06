require 'calculator'

describe Calculator, ' Sobre a calculadora' do
  context '#div' do
    it 'divide by 0' do
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError)
      expect{subject.div(3,0)}.to raise_error('divided by 0')
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError, 'divided by 0')
      expect{subject.div(3,0)}.to raise_error(/divided/)
    end
  end

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
