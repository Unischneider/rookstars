class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.text :pitch
      t.references :project, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
