require 'student'
require 'course'

describe 'Mocks' do
  it '#bar' do
    # change order with mocks
    # setup
    student = Student.new

    # verify
    expect(student).to receive(:foo)

    # exercise
    student.bar
  end

  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)

    student.foo(123)
  end

  it 'repetição' do
    student = Student.new
    expect(student).to receive(:foo).with(123).twice

    student.foo(123)
    student.foo(123)
    # expect(student).to receive(:foo).with(123).once
    # expect(student).to receive(:foo).with(123).exactly(3).times
    # expect(student).to receive(:foo).with(123).at_least(:once)
    # expect(student).to receive(:foo).with(123).at_least(:twice)
    # expect(student).to receive(:foo).with(123).at_least(n).times
  end

  it 'retorno' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true) # expected return

    expect(student.foo(123)).to be true
  end
end
