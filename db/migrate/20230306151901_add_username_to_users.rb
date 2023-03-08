class AddUsernameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :admin, :boolean, default: false
    add_column :users, :api_token, :string
  end
end
