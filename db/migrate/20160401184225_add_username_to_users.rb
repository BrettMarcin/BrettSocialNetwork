class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string #add a new column to table "users called "username that is type string
    add_index :users, :username, unique: true # make sure all usernames are unique
  end
end
