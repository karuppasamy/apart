require 'rails_helper'

RSpec.describe ReadingService, type: :service do
  let(:service) { described_class.new }

  context "#generate_sequence_number" do
    it "should return 1 if no reading data for the given thermostat id" do
      sequence_number = service.generate_sequence_number(thermostat_id: [nil, 10].sample)
      expect(sequence_number).to eq 1
    end

    it "should return 2 if reading data found for the given thermostat id" do
      thermostat = create :thermostat
      create :reading, thermostat_id: thermostat.id
      sequence_number = service.generate_sequence_number(thermostat_id: thermostat.id)

      expect(sequence_number).to eq 2
    end
  end
end
