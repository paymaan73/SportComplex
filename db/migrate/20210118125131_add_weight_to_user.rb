class AddWeightToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :weight, :float
    add_column :users, :height, :float
  end
end
