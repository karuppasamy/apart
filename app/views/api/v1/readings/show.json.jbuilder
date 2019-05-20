json.data do
  if @reading.present?
    json.call(@reading, :id, :temperature, :humidity, :battery_charge)
  else
    json.process_errors @errors do |t|
      json.message t.message
      json.code (t.try(:code) ? t.code.to_s : 404)
    end
  end
end
