require 'rails_helper'

describe "delete a park name route", :type => :request do
  
  before do
    park = FactoryBot.create(:park)
    delete "/parks/#{park.id}", params: { name: 'Yellowstone'}
  end

  it 'returns a delete message' do
    expect(JSON.parse(response.body)['message']).to eq("This park has been deleted successfully!")
  end

  it 'returns an updated status' do
    expect(response). to have_http_status(:ok)
  end
end

