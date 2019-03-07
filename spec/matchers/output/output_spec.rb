# match the output from console

describe 'Matcher output' do
  it { expect{ print 'Andrew' }.to output.to_stdout }
  it { expect{ print 'Andrew' }.to output('Andrew').to_stdout }
  it { expect{ print 'Andrew' }.to output(/Andrew/).to_stdout } # with regex


  it { expect{ warn 'Andrew' }.to output.to_stderr }
  it { expect{ warn 'Andrew' }.to output("Andrew\n").to_stderr }
  it { expect{ warn 'Andrew' }.to output(/Andrew/).to_stderr } # with regex
end