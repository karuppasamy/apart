require 'rails_helper'

RSpec.describe Api::V1::ReadingsController, type: :controller do
  render_views

  let(:json) { JSON.parse(response.body) }
  let!(:thermostat) { create(:thermostat) }
  let!(:reading) { create(:reading, thermostat_id: thermostat.id) }

  describe "POST create" do
    it 'should return the data if data found' do
      data = {
                "thermostat_id": 1,
                "temperature": 1,
                "humidity": 1,
                "battery_charge": 1
              }

      post :create, params: { use_route: 'api/v1/readings', data: data, format: :json }
      expected_data = { "sequence_number" => 2 }
      expect(json).to match(expected_data)
    end
  end

  describe "GET /readings.json" do
    it 'should return the data if data found' do
      get :index, params: { use_route: 'api/v1/readings', thermostat_id: thermostat.id, format: :json }
      expected_data = { "data" => [ { "id"=>1, "temperature"=> reading.temperature, "humidity"=> reading.humidity, "battery_charge"=> reading.battery_charge } ]}

      expect(json).to match(expected_data)
    end

    it 'should return empty array if no data found' do
      get :index, params: { use_route: 'api/v1/readings', thermostat_id: [2, nil].sample, format: :json }
      expected_data = { "data" => { "process_errors" => { "code" => 404, "message" => "No data found." }}}

      expect(json).to match(expected_data)
    end
  end

  describe "GET /reading/{ID}.json" do
    it 'should return the data if data found' do
      get :show, params: { use_route: 'api/v1/readings', thermostat_id: thermostat.id, id: reading.id, format: :json }
      expected_data = { "data" => { "id"=>1, "temperature"=> reading.temperature, "humidity"=> reading.humidity, "battery_charge"=> reading.battery_charge }}

      expect(json).to match(expected_data)
    end

    it 'should return empty if thermostat_id is not valid' do
      get :show, params: { use_route: 'api/v1/readings', thermostat_id: [2, nil].sample, format: :json }
      expected_data = { "data" => { "process_errors" => [{ "code" => 404, "message" => "ActiveRecord::RecordNotFound" }] }}

      expect(json).to match(expected_data)
    end

    it 'should return empty if thermostat_id is valid and reading id is not valid' do
      id = [2, nil].sample
      get :show, params: { use_route: 'api/v1/readings', thermostat_id: thermostat.id, id: id, format: :json }
      expected_data = {"data"=>{"process_errors"=>[{ "code" => 404, "message" => "Couldn't find Reading with 'id'=#{id} [WHERE \"readings\".\"thermostat_id\" = ?]" }] }}

      expect(json).to match(expected_data)
    end
  end

  describe "GET /readings/stats.json" do
    it 'should return the data if data found' do
      reading2 = create :reading, thermostat_id: thermostat.id
      readings = Reading.all

      get :stats, params: { use_route: 'api/v1/readings', thermostat_id: thermostat.id, format: :json }
      expected_data = { "data" => {
        "temperature" => {
          "max": readings.maximum(:temperature),
          "min": readings.minimum(:temperature),
          "avg": readings.average(:temperature).round
         },
        "humidity" => {
          "max": readings.maximum(:humidity),
          "min": readings.minimum(:humidity),
          "avg": readings.average(:humidity).round
         },
        "battery_charge" => {
          "max": readings.maximum(:battery_charge),
          "min": readings.minimum(:battery_charge),
          "avg": readings.average(:battery_charge).round
         }
      }}.with_indifferent_access

      expect(json).to match(expected_data)
    end
  end
end
