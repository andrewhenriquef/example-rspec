describe 'Test Double' do
  it '--' do
    user = double('User')
    puts user.inspect

    # the same as the example below
    # allow(user).to receive(:name).and_return('Andrew')
    # allow(user).to receive(:password).and_return('password')
    allow(user).to receive_messages(name: 'Andrew', password: 'password')
    user.name
    user.password
  end

  it 'as_null_object' do
    # fazer a chamada e dispensar a mensagem, transforma em um objeto nulo
    # some com as mensagens de erro do double
    user = double('User').as_null_object

    allow(user).to receive(:name).and_return('Jack')
    allow(user).to receive(:password).and_return('secret')

    puts user.name
    puts user.password

    user.abc
  end
end
