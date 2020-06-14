class MissingIndexOnParentId < ActiveRecord::Migration[4.2]
  def change
    add_index :items, :parent_id
  end
end
