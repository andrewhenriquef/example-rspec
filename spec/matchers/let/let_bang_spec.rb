$count = 0

describe 'let!' do
  ordem_de_invocacao = []

  # tipo um before, roda antes do teste
  let!(:counter) do
    ordem_de_invocacao << :let!
    $count +=1
  end

  it 'Chama o método helper antes do teste' do
    ordem_de_invocacao << :exemplo
    expect(ordem_de_invocacao).to eq([:let!, :exemplo])
    expect(counter).to eq(1)
  end
end
