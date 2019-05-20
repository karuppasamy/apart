json.data do
  if @readings.present?
    json.array! @readings do |reading|
      json.id reading.id
      json.temperature reading.temperature
      json.humidity reading.humidity
      json.battery_charge reading.battery_charge
    end
  else
    json.process_errors do
      json.message I18n.t("message.no_data_found")
      json.code 404
    end
  end
end
