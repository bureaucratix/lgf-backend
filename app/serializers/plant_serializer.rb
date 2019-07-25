class PlantSerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :owner, :water_interval, :water_amount, :last_watered_time, :img_url, :species
    def owner
      {owner_id: self.object.user.id, 
       owner_name: self.object.user.name}
    end 

    def species
      {
        name: self.object.species.common_name,
        default_water_interval: self.object.species.default_water_interval,
        default_water_amount: self.object.species.default_water_amount,
        heat_preference: self.object.species.heat_preference,
        light_preference: self.object.species.light_preference,
        toxicity: self.object.species.toxicity
      }
    end
  end