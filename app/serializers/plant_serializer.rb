class PlantSerializer < ActiveModel::Serializer
    attributes :id, :name, :owner, :water_interval, :water_amount, :last_watered_time, :species

    def owner
      {ownerId: self.object.user.id, 
       ownerName: self.object.user.name}
    end 

    def species
      {
        name: self.object.species.common_name,
        defaultWaterInterval: self.object.species.default_water_interval,
        defaultWaterAmount: self.object.species.default_water_amount,
        heatPreference: self.object.species.heat_preference,
        lightPreference: self.object.species.light_preference,
        toxicity: self.object.species.toxicity
      }
    end
  end