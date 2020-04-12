require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with  name and password' do
    user = User.new(
      name: 'ann',
      password: '123456'
    )
    expect(user).to be_valid
  end

  it 'is invalid without a name' do
    user = User.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end
end
