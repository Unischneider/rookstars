class AddColumnsToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :name, :string
    add_column :organizations, :description, :text
    add_column :organizations, :pic_url, :string
  end
end
