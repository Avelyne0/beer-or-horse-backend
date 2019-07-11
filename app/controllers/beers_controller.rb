class BeersController < ApplicationController

    def index
        beers = Beer.all
        render json: beers, except: [:created_at, :updated_at]
    end

    def show
        beer = Beer.find_by_id params[:id]
        render json: beer, except: [:created_at, :updated_at]
    end
    
end
