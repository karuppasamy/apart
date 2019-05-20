require_relative "data/heating_system"

10.times do |index|
  Thermostat.create(location: Faker::Address.full_address)

  puts "Thermostat ##{index+1} has been created."
end

HeadingSystem.readings.each_with_index do |heating_system_reading, index|
  thermostat = Thermostat.all.sample
  Reading.create(heating_system_reading.merge(thermostat: thermostat, battery_charge: 10.00))

  puts "Reading ##{index+1} has been created."
end
