FactoryGirl.define do

  factory :user do
    email {Faker::Internet.email}
    first_name {Faker::Name.first_name}
    last_name  {Faker::Name.last_name}
    phone {Faker::PhoneNumber.phone_number}
    password              '1'*8
    password_confirmation '1'*8

    organization
  end

end
