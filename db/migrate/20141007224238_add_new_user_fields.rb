class AddNewUserFields < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :delay, :integer
    add_column :users, :submitted, :integer, null: false, default: 0
  end
end
