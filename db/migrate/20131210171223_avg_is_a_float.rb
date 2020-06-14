class AvgIsAFloat < ActiveRecord::Migration[4.2]
  def up
    change_column :users, :avg, :float
  end

  def down
    change_column :users, :avg, :integer
  end
end
