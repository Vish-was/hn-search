class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.text :about
      t.integer :karma
      t.datetime :created_at, null: false
    end
    add_index :users, :username
  end
end
