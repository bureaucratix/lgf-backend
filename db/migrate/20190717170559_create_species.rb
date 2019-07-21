class CreateSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :species do |t|
      t.string :common_name
      t.string :scientific_name
      t.integer :default_water_interval
      t.string :default_water_amount
      t.string :heat_preference
      t.string :light_preference
      t.string :toxicity

      t.timestamps
    end
  end
end
