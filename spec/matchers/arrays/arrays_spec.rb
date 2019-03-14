RSpec::Matchers.define_negated_matcher :exclude, :include

# collection is a tag filter -> rspec --tag collection
# we can call just as :collection instead of collection: true

describe Array.new([1, 2, 3]), collection: true do
  it '#include' do
    expect(subject).to include 2
    expect(subject).to include(2, 1)
    expect(subject).to include 3, 2
  end

  it { expect(subject).to exclude 4 }

  # I can user --tag ~slow(i can use any key) in my .rspec file
  # to not load the tests that I don't want
  # I setted this value to my .rspec file, so this will not be shown

  it '#match_array', slow: true do
    expect(subject).to match_array([1, 2, 3])
    expect(subject).to match_array([3, 2, 1])
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly(1, 2, 3)
    expect(subject).to contain_exactly(3, 1, 2)
  end
end
