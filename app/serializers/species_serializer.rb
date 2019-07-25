class SpeciesSerializer < ActiveModel::Serializer
    attributes :id, :plants, :common_name, :default_water_interval, :default_water_amount, :heat_preference, :light_preference, :toxicity
    has_many :plants

    def plants 
        object.plants.map do |plant|
        {
            name: plant.name, 
            water_interval: plant.water_interval, 
            water_amount: plant.water_amount, 
            species: plant.species.common_name
        }
        end 
    end 
end