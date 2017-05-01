require 'rails_helper'

RSpec.describe Trip, type: :model do
  it "is valid" do
    sample_trip = FactoryGirl.build(:trip)
    expect(sample_trip).to be_valid
  end

  it do
    should have_valid(:name).when('Swiss Bike Tour')
  end

  it do
    should_not have_valid(:name).when(nil, '')
  end
end
