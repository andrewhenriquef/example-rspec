describe 'Ruby On Rails' do
  # hook que ja faz o before each e o after each no mesmo example
  # around(:each) do |example|
  #   puts 'Antes'
  #   example.run
  #   puts 'Depois'
  # end

  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { expect(fruta).to eq('banana').or eq('laranja').or eq('uva') }
end
