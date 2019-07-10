class HorsesController < ApplicationController
    before_action :find_horse, only: [:show, :edit, :destroy]
    def index
        horses = Horse.all
        render json: horses, except: [:created_at, :updated_at]
    end

    def show
        horse = Horse.find_by_id params[:id]
        render json: horse, except: [:created_at, :updated_at]
    end

    def destroy
    end

    private

    def find_horse
      @horse = Horse.find params[:id]
    end

    def horse_params
      params.require(:horse, :name).permit(:top_score)
    end
end
