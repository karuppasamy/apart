require 'rails_helper'

RSpec.describe Thermostat, type: :model do
  it { should have_secure_token(:household_token) }
  it { should have_many(:readings) }
end
