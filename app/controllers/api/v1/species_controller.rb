class Api::V1::SpeciesController < ApplicationController
    def index 
        render json: Species.all
    end
    def show 
        render json: Species.find(params[:id])
    end 

end
