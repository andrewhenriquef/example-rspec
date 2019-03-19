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
end