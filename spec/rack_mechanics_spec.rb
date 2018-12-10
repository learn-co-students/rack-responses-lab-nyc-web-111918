require_relative './spec_helper'
require 'pry'
describe "App" do

  it 'wishes user a good morning in the morning' do
    # binding.pry
    allow(Time).to receive(:now){
      # binding.pry
      Time.new(2015,11,27,9,30)
      # binding.pry
    }
    get '/'
    expect(last_response.body).to include("Morning")
    # binding.pry
  end

  it 'wishes user a good afternoon in the afternoon' do
    allow(Time).to receive(:now){
      Time.new(2015,11,27,14,30)
    }
    get '/'
    expect(last_response.body).to include("Afternoon")
  end
end
