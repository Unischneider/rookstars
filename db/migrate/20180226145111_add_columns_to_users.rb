class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :github, :string
    add_column :users, :linkedin, :string
    add_column :users, :pic_url, :string
    add_column :users, :about_me, :text
  end
end
