describe 'be_within' do
  # intervalo entre um valor (pode ter uma margem de 0.5 para cima ou para baixo)
  it { expect(12.5).to be_within(0.5).of(12) }
  it { expect([11.6, 12.1, 12.4]).to all be_within(0.5).of(12) }
end
