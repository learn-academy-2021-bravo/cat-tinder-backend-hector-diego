require 'rails_helper'

RSpec.describe Beer, brand: :model do
 it "should validate brand" do
 beer = Beer.create 
 expect(beer.errors[:brand]).to_not be_empty
  end
it "should validate brew" do
  beer = Beer.create
  expect(beer.errors[:brew]).to_not be_empty
  end
it "should validate country" do
  beer = Beer.create
  expect(beer.errors[:country]).to_not be_empty
  end
end
