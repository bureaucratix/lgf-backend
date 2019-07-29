
class Api::V1::PlantsController < ApplicationController
    def index 
        render json: Plant.all
    end
    def show 
        render json: Plant.find(params[:id])
    end 

    def create
        @plant = Plant.new(plant_params)
        
        if @plant.save
            render json: { plant: PlantSerializer.new(@plant) }, status: :created
        else
            render json: { error: 'failed to create new plant' }, status: :not_acceptable
        end
    end
    def update
        
        @plant = Plant.find(params[:id])
        @plant.update(plant_params)

        render json: { plant: PlantSerializer.new(Plant.find(params[:id])) }, status: :accepted
    end
    def destroy
        @plant = Plant.find(params[:id])
        @plant.destroy
        render json: Plant.all
    end

    private 

    def plant_params 
        params.require(:plant).permit(:name, :description, :last_watered_time, :water_interval, :water_amount, :img_url, :user_id, :species_id)
    end

    #make some new actions/routes for searching by name re:alexas

end
