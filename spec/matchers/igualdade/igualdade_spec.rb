describe 'Matchers de Igualdade' do
  it '#equal testa se é o mesmo objeto' do
    x = 'Ruby'
    y = 'Ruby'
    # equal test if the objects are equals
    expect(x).to_not equal(y)
  end

  it '#be também testa se é o mesmo objeto' do
    x = 'Ruby'
    y = 'Ruby'
    # 'be' does exactly same thing
    expect(x).to_not be(y)
  end

  it '#eq testa se é o mesmo valor' do
    x = 'Ruby'
    y = 'Ruby'
    # 'be' does exactly same thing
    expect(x).to eq(y)
  end
  it '#eql também testa se é o mesmo valor' do
    x = 'Ruby'
    y = 'Ruby'
    # 'be' does exactly same thing
    expect(x).to eql(y)
  end
end
