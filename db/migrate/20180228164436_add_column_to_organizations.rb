class AddColumnToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :photo, :string
  end
end
