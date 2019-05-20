class Api::V1::ThermostatsController < ApplicationController
  def index
    @thermostats = Thermostat.all
  end

  def show
    begin
      status = :ok
      @thermostat = Thermostat.find(params[:id])
    rescue ActiveRecord::RecordNotFound => exception
      @errors = [exception]
      status = :not_found
    end
  end
end
