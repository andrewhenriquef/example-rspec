require 'student'
require 'course'

describe 'Stub' do
  it '#has_finished?' do
    student = Student.new
    course = Course.new
    # student.has_finished?(course)

    allow(student).to receive(:has_finished?)
                  .with(an_instance_of(Course)) #restrict what arguments will this instance method receive
                  .and_return(true)

    course_finished = student.has_finished?(course)

    expect(course_finished).to be_truthy
  end

  it 'dinamic arguments' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      if arg == :hello
        'Hello'
      elsif arg == :hi
        'Hi!!!'
      else
        'i dont understand'
      end
    end

    expect(student.foo(:hello)).to eq('Hello')
    expect(student.foo(:hi)).to eq('Hi!!!')
    expect(student.foo(:try)).to eq('i dont understand')
  end

  it 'allow any class instance' do
    student = Student.new
    other_student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(student.bar).to be_truthy
    expect(other_student.bar).to be_truthy
  end

  it 'Errors' do
    student = Student.new
    allow(student).to receive(:bar).and_raise(RuntimeError)

    expect { student.bar }.to raise_error(RuntimeError)
  end
end