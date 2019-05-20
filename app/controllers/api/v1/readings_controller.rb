class Api::V1::ReadingsController < ApplicationController
  before_action :set_thermostat, :reading_service

  def index
    @readings = @thermostat&.readings
  end

  def create
    sequence_number = @reading_service.generate_sequence_number(thermostat_id: reading_params[:thermostat_id])
    attributes = reading_params.merge({ number: sequence_number })
    HeatingReadingJob.perform_later(attributes)

    render json: { "sequence_number": sequence_number }
  end

  def stats
    begin
      raise ActiveRecord::RecordNotFound if @thermostat.nil?
      @readings = @thermostat.readings
    rescue => exception
      status = :not_found
      @errors = [exception]
    end
  end

  def show
    begin
      raise ActiveRecord::RecordNotFound if @thermostat.nil?
      @reading = @thermostat.readings.find(params[:id])
      status = :ok
      @thermostat = Thermostat.find(params[:id])
    rescue ActiveRecord::RecordNotFound => exception
      status = :not_found
      @errors = [exception]
    rescue :exception
      status = :internal_server_error
      @errors = [ProcessError.new(error_message: status.to_s.humanize)]
    end
  end

  private

  def reading_service
    @reading_service = ReadingService.new
  end

  def set_thermostat
    @thermostat = Thermostat.where(id: params[:thermostat_id]).first
  end

  def reading_params
    params.require(:data)
          .permit(:thermostat_id, :temperature, :humidity, :battery_charge)
  end
end

class ProcessError
  attr_accessor :message, :code, :details

  def initialize(error_message:, error_code: nil, details: nil)
    @message = error_message
    @code = error_code.to_s if error_code.present?
    @details = details
  end

  def serialize
    self.instance_values.select { |_, v| v }
  end
end
