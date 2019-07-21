class SpeciesSerializer < ActiveModel::Serializer
    attributes :id, :plants, :common_name, :default_water_interval, :default_water_amount, :heat_preference, :light_preference, :toxicity
    has_many :plants

    def plants 
        object.plants.map do |plant|
        {
            name: plant.name, 
            waterInterval: plant.water_interval, 
            waterAmount: plant.water_amount, 
            species: plant.species.common_name
        }
        end 
    end 
end