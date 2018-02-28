class AddColumsToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :landing_page, :boolean
    add_column :projects, :db_sql, :boolean
    add_column :projects, :maps, :boolean
    add_column :projects, :forms, :boolean
    add_column :projects, :mail_integration, :boolean
    add_column :projects, :messaging_integration, :boolean
    add_column :projects, :sign_up_log_in, :boolean
    add_column :projects, :payment_integration, :boolean
    add_column :projects, :other, :string
  end
end
