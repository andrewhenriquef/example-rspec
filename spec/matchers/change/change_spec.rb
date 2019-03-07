require 'contador'

describe 'Matcher change' do
  it { expect{ Contador.incrementa }.to change{ Contador.qtd } } # just expect to change Contado.qtd to any value
  it { expect{ Contador.incrementa }.to change{ Contador.qtd }.by(1) } # increase by 1
  it { expect{ Contador.incrementa }.to change{ Contador.qtd }.from(2).to(3) } # increase from 2 to 3
end