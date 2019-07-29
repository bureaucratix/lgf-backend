class Api::V1::SpeciesController < ApplicationController
    skip_before_action :authorized

    def index 
        render json: Species.all
    end
    def show 
        render json: Species.find(params[:id])
    end 

    def create
        @species = Species.new(species_params)
        
        if @species.save
            render json: { species: SpeciesSerializer.new(@species) }, status: :created
        else
            render json: { error: 'failed to create new species' }, status: :not_acceptable
        end
    end

    private

    def species_params 
        params.require(:species).permit(:common_name, :toxicity, :default_water_interval, :default_water_amount, :heat_preference, :light_preference)
    end

end
