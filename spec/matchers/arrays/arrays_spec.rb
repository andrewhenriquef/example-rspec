RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1, 2, 3]) do
  it '#include' do
    expect(subject).to include 2
    expect(subject).to include(2, 1)
    expect(subject).to include 3, 2
  end

  it { expect(subject).to exclude 4 }

  it '#match_array' do
    expect(subject).to match_array([1, 2, 3])
    expect(subject).to match_array([3, 2, 1])
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly(1, 2, 3)
    expect(subject).to contain_exactly(3, 1, 2)
  end
end
