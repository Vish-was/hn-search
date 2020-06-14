class AddIndexOnAuthor < ActiveRecord::Migration[4.2]
  def change
    add_index :items, :author
  end
end
