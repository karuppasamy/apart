FactoryBot.define do
  factory :reading do
    thermostat_id 1
    temperature { Faker::Number.decimal(2) }
    humidity { Faker::Number.decimal(2) }
    battery_charge { Faker::Number.decimal(2) }
  end
end
