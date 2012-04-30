class CreateRestaurantAdmins < ActiveRecord::Migration
  def change
    create_table :restaurant_admins do |t|
      t.string :name

      t.timestamps
    end
  end
end
