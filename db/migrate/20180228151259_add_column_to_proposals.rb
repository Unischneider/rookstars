class AddColumnToProposals < ActiveRecord::Migration[5.1]
  def change
    add_column :proposals, :joinable, :boolean
  end
end
