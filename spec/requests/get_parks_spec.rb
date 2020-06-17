require 'rails_helper'

FactoryBot.find_definitions

describe "get all parks route", :type => :request do
  let!(:parks) { FactoryBot.create_list(:park, 40)}

  before { get '/parks'}

  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end