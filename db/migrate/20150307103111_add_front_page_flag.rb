class AddFrontPageFlag < ActiveRecord::Migration[4.2]
  def change
    add_column :items, :front_page, :boolean
    add_index :items, :front_page
  end
end
