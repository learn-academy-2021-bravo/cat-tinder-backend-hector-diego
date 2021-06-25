class BeersController < ApplicationController
    def index
        beers = Beer.all
        render json: beers 
    end
    def create 
        beer = Beer.create(beer_params)
        render json: beer
    end
    def update

    end
    def destroy

    end
    private 
    def beer_params
        params.require(:beer).permit(:brand, :brew, :country)
    end
end
