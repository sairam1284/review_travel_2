FactoryGirl.define do
  factory :review do
    body "This is a test review from the review factory"

    user
    trip
  end
end
