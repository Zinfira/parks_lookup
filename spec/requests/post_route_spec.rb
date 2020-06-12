require 'rails_helper'

describe "post a park route", :type => :request do

  before do
    post '/parks', params: { :name => 'test_name', :location => 'test_location', :content => 'test_content' }
  end

  it 'returns the park name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the park location' do
    expect(JSON.parse(response.body)['location']).to eq('test_location')
  end

  it 'returns the park content' do
    expect(JSON.parse(response.body)['content']).to eq('test_content')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end