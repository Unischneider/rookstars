class ChangePicUrlNameOnProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :pic_url, :photo
  end
end
