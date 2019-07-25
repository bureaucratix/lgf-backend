class ChangeDatetimeToString < ActiveRecord::Migration[5.2]
  def self.up
    change_column :plants, :last_watered_time, :string
  end

  def self.down
    change_column :plants, :last_watered_time, :datetime
  end
end
