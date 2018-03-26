require 'string_nao_vazia'

describe String do
  describe StringNaoVazia do
    it 'não está vazia' do
      expect(subject).to eq('não sou vazio')
    end
  end
end
