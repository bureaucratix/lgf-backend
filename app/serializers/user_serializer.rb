class UserSerializer < ActiveModel::Serializer
    # not password
    attributes :id, :username, :name, :email, :plants
    has_many :plants
    def plants 
        self.object.plants.map do |plant|
        {
            name: plant.name, 
            description: plant.description,
            waterInterval: plant.water_interval, 
            waterAmount: plant.water_amount, 
            lastWateredTime: plant.last_watered_time, 
            species: plant.species.common_name
        }
        end 
    end 
end