FactoryBot.define do
  factory :thermostat do
    household_token { Faker::Alphanumeric.alphanumeric }
    location { Faker::Address.full_address }
  end
end
