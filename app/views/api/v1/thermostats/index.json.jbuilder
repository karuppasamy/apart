json.data do
  if @thermostats.any?
    json.array! @thermostats do |thermostat|
      json.id thermostat.id
      json.household_token thermostat.household_token
      json.location thermostat.location
    end
  else
    json.process_errors do
      json.message I18n.t("message.no_data_found")
      json.code 404
    end
  end
end
