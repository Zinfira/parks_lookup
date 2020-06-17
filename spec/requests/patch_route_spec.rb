require 'rails_helper'

describe "update a park name route", :type => :request do
  
  before do
    park = FactoryBot.create(:park)
    patch "/parks/#{park.id}", params: { name: 'Yellowstone'}
  end

  it 'returns the park name' do
    expect(JSON.parse(response.body)['message']).to eq("This park has been updated successfully!")
  end

  it 'returns an updated status' do
    expect(response). to have_http_status(:ok)
  end
end


describe "update a park route ", :type => :request do
  
  before do
    park = FactoryBot.create(:park)
    patch "/parks/#{park.id}", params: { location: "Montana"}
  end

  it 'returns the park location' do
    expect(JSON.parse(response.body)['message']).to eq("This park has been updated successfully!")
  end

  it 'returns an updated status' do
    expect(response). to have_http_status(:ok)
  end
end