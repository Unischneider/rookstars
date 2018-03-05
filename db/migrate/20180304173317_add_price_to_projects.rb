class AddPriceToProjects < ActiveRecord::Migration[5.1]
  def change
    add_monetize :projects, :price, currency: { present: false }
  end
end
