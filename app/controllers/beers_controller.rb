class BeersController < ApplicationController
    def index
        beers = Beer.all
        render json: beers 
    end
    def create 
        beer = Beer.create(beer_params)
        if beer.valid?
            render json: beer
        else
            render json: beer.errors, status: 422
        end
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
