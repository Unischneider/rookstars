class RenameColumnInUser < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :pic_url, :photo

  end
end
