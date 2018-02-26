class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :budget
      t.string :pic_url
      t.date :due_date
      t.string :status
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
