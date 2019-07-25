class AddUsernameToUsers < ActiveRecord::Migration[5.2]
    def self.up
      add_column :users, :username, :string
    end
   
    def self.down
      remove_column :users, :username
    end
end