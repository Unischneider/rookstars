class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.text :pitch
      t.boolean :accepted
      t.references :project, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
