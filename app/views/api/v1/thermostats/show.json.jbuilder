json.data do
  if @thermostat.present?
    json.call(@thermostat, :id, :household_token, :location)
  else
    json.process_errors @errors do |t|
      json.message t.message
      json.code (t.try(:code) ? t.code.to_s : 404)
    end
  end
end
