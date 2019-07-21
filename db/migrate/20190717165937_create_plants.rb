class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :water_interval
      t.string :water_amount
      t.datetime :last_watered_time
      t.integer :user_id
      t.integer :species_id

      t.timestamps
    end
  end
end
