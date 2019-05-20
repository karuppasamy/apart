class ReadingService
  def generate_sequence_number(thermostat_id:)
    Reading.where(thermostat_id: thermostat_id).count + 1
  end
end
