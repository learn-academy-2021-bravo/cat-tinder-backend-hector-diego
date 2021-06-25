require 'rails_helper'

RSpec.describe "Beers", type: :request do
  describe "GET /index" do
    it "gets a list of beers" do
      Beer.create brand: 'Corona', brew: 'Pale lager', country: 'Mexico'
      get '/beers'
      json = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(json.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a beer" do
    # The params we are going to send with the request
    beer_params = {
      beer: {
        brand: 'Corona',
        brew: 'Pale',
        country: 'Mexico'
      }
    }
    # Send the request to the server
    post '/beers', params: beer_params
    # Assure that we get a success back
    expect(response).to have_http_status(200)
    # Look up the cat we expect to be created in the Database
    beer = Beer.first
    # Assure that the created cat has the correct attributes
    expect(beer.brand).to eq 'Corona'
    expect(beer.brew).to eq 'Pale'
    expect(beer.country).to eq 'Mexico'
  end
end
end
