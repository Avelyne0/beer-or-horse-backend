class BeersController < ApplicationController
    before_action :find_beer, only: [:show, :edit, :destroy]


    def index
        beers = Beer.all
        render json: beers, except: [:created_at, :updated_at]
    end

    def show
        beer = Beer.find_by_id params[:id]
        render json: beer, except: [:created_at, :updated_at]
    end

    def destroy
    end

    private

    def find_beer
        @beer = Beer.find params[:id]
    end

    def beer_params
        params.require(:beer, :name).permit(:top_score)
    end
end
