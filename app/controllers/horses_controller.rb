class HorsesController < ApplicationController

    def index
        horses = Horse.all
        render json: horses, except: [:created_at, :updated_at]
    end

    def show
        horse = Horse.find_by_id params[:id]
        render json: horse, except: [:created_at, :updated_at]
    end

end
