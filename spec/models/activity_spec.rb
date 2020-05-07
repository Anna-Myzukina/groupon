require 'rails_helper'

RSpec.describe Activity, type: :model do
  before do
    @author = User.create(name: 'anna', password: '123456')
    @activity = @author.activities.create(name: 'running', hours: '8')
  end

  it 'is valid with name of activity and hours of activity' do
    expect(@activity).to be_valid
  end

  it 'is invalid without name of activity and hours of activity' do
    activity = Activity.new(name: nil)
    activity.valid?
    expect(activity.errors[:name]).to include("can't be blank")
  end
end
