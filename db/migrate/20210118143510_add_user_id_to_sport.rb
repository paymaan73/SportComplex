class AddUserIdToSport < ActiveRecord::Migration[6.1]
  def change
    add_column :sports, :user_id, :integer
    add_index :sports, :user_id
  end
end
