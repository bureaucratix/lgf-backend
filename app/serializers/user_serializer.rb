class UserSerializer < ActiveModel::Serializer
    # not password
    attributes :id, :username, :name, :email, :plants
    has_many :plants
    def plants 
        
        self.object.plants.map do |plant|
        {
            id: plant.id,
            name: plant.name, 
            description: plant.description,
            water_interval: plant.water_interval, 
            water_amount: plant.water_amount, 
            last_watered_time: plant.last_watered_time,
            species: plant.species.common_name,
            toxicity: plant.species.toxicity,
            img_url: plant.img_url
        }
        end 
    end 
end