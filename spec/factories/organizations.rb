FactoryGirl.define do

  factory :organization do
    name { Faker::Company.name }
    subdomain {Faker::Lorem.words(1).first}
  end

end
