$counter = 0

describe 'let' do
  # Ele só é carregado quando é chamado a primeira vez no teste, após isso é cacheado
  # Se for chamado em outro teste ai é invocado novamente, o let ele "descacheia"(desmemoriza) ao terminar o teste em que foi invocado

  let(:count) { $counter += 1 }
  it 'memorize the value' do
    expect(count).to eq(1)
    expect(count).to eq(1)
  end

  it 'não é cacheado entre os testes' do
    expect(count).to eq(2)
  end
end
