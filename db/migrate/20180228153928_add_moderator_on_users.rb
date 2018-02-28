class AddModeratorOnUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :moderator, :boolean, null: false, default: false
  end
end
