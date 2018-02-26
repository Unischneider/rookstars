class AddColumnsToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :location, :string
    add_column :organizations, :website, :string
  end
end
