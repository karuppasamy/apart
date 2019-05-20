json.data do
  if @readings.present?
    json.temperature do
      json.max @readings.maximum(:temperature)
      json.min @readings.minimum(:temperature)
      json.avg @readings.average(:temperature).round
    end
    json.humidity do
      json.max @readings.maximum(:humidity)
      json.min @readings.minimum(:humidity)
      json.avg @readings.average(:humidity).round
    end
    json.battery_charge do
      json.max @readings.maximum(:battery_charge)
      json.min @readings.minimum(:battery_charge)
      json.avg @readings.average(:battery_charge).round
    end
  else
    json.process_errors @errors do |t|
      json.message t.message
      json.code (t.try(:code) ? t.code.to_s : 404)
    end
  end
end
