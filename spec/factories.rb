FactoryGirl.define do
  sequence :options do |n|
    rand(3..3).times.inject({}) {|hash,x| hash.merge "stream#{x}".to_sym => Faker::Address.street_name.capitalize }
  end

  factory :desk do
    title Faker::Lorem.sentence 5
    options
    state :normal
    user_id 1
  end
end