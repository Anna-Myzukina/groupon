require 'rails_helper'

RSpec.describe Group, type: :model do
  it 'is valid with  name and icon' do
    group = Group.new(
      name: 'students',
      icon: 'any image file'
    )
    expect(group).to be_valid
  end

  it 'is invalid without a name and an icon' do
    group = Group.new(name: nil)
    group.valid?
    expect(group.errors[:name]).to include("can't be blank")
  end
end
