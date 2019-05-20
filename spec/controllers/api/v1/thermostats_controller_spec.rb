require 'rails_helper'

RSpec.describe Api::V1::ThermostatsController, type: :controller do
  render_views

  let(:json) { JSON.parse(response.body) }
  let!(:thermostats) { create_list(:thermostat, 2) }

  describe "GET /thermostats.json" do
    it 'should return the data if data found' do
      get :index, format: :json
      expected_data = { "data" =>
                        [ { "household_token" => thermostats.first.household_token, "id" => thermostats.first.id, "location" => thermostats.first.location },
                          { "household_token" => thermostats.second.household_token, "id" => thermostats.second.id, "location" => thermostats.second.location }
                        ]
                      }

      expect(json).to match(expected_data)
    end

    it 'should return error message if no data found' do
      allow(Thermostat).to receive(:all).and_return([])
      get :index, format: :json
      expected_data = { "data" => { "process_errors" => { "code" => 404, "message" => "No data found." } }}

      expect(json).to match(expected_data)
    end
  end

  describe "GET /thermostats/{ID}.json" do
    it 'should return the data if data has found' do
      thermostat = thermostats.sample
      get :show, params: { id: thermostat.id, format: :json}
      expected_data = { "data" => { "household_token" => thermostat.household_token, "id" => thermostat.id, "location" => thermostat.location }}

      expect(json).to match(expected_data)
    end

    it 'should return empty if thermostat_id is not valid' do
      id = [3, nil].sample
      get :show, params: { use_route: 'api/v1/thermostats', id: id, format: :json }
      expected_data = { "data" => { "process_errors" => [{ "message" => "Couldn't find Thermostat with 'id'=#{id}", "code" => 404 }]}}

      expect(json).to match(expected_data)
    end
  end
end
