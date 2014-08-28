describe User, '#name' do
  let(:user) { build(:user) }

  it 'returns users email' do 
    expect(user.name).to eq user.email
  end
end
