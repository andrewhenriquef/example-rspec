require 'pessoa'

shared_examples 'status' do |sentimento|
  it "##{sentimento}!" do
    pessoa.send("#{sentimento}!")
    expect(pessoa.status).to eq("Sentindo-se #{sentimento.capitalize}!")
  end
end

# Use it when the specs are repetitives
describe 'Pessoa' do
  subject(:pessoa) { Pessoa.new }

  include_examples 'status', :feliz
  it_behaves_like 'status', :triste
  it_should_behave_like 'status', :contente


  # how the repetitive specs should be without the shared examples

  # it '#feliz!' do
  #   pessoa.feliz!
  #   expect(pessoa.feliz!).to eq('Sentindo-se Feliz!')
  # end

  # it '#triste!' do
  #   pessoa.triste!
  #   expect(pessoa.triste!).to eq('Sentindo-se Triste!')
  # end

  # it '#contente!' do
  #   pessoa.contente!
  #   expect(pessoa.contente!).to eq('Sentindo-se Contente!')
  # end
end