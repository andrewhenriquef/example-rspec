require 'pessoa'

describe 'Atributos' do
  around(:each) do |teste|
    puts 'Antes'
    @pessoa = Pessoa.new
    teste.run # roda o teste
    puts "Depois >>>> #{@pessoa}"
  end

  it 'have_attributes' do
    @pessoa.name = 'Andrew'
    @pessoa.age = 23
    expect(@pessoa).to have_attributes(name: start_with('A'), age: (be >= 20))
  end
end
