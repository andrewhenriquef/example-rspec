# you can instanciate the object directly in desbribe description
describe 'description' do
  it 'string' do
    str = 'Andrew'
    expect(str.size).to eq(6)
  end

  it 'size of description' do
    expect(subject.size).to eq(11)
  end

  it 'kind of description' do
    expect(subject).to be_kind_of(String)
  end
end