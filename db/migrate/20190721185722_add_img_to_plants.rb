class AddImgToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :img_url, :string

  end
end
