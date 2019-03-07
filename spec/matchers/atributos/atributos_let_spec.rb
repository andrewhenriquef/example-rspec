require 'pessoa'

describe 'atributos_let' do
  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
    pessoa.name = 'Amanda'
    pessoa.age = 20

    expect(pessoa).to have_attributes(name: a_string_starting_with('A'))
  end

  it 'have_attributes' do
    pessoa.name = 'José'
    pessoa.age = 25

    expect(pessoa).to have_attributes(name: a_string_starting_with('J'))
  end
end
