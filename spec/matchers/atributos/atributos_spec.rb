require 'pessoa'

describe 'Atributos' do
  it 'have_attributes' do
    pessoa = Pessoa.new

    pessoa.name = 'Andrew'
    pessoa.age = 23

    expect(pessoa).to have_attributes(name: start_with('A'), age: (be >= 20))
  end
end
