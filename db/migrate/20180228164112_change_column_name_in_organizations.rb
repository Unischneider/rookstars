class ChangeColumnNameInOrganizations < ActiveRecord::Migration[5.1]
  def change
    remove_column :organizations, :pic_url, :photo
  end
end
