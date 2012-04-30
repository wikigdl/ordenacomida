class CreateRestaurantRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurant_restaurants do |t|
      t.string :name
      t.text :description
      t.text :address
      t.text :contact_info

      t.timestamps
    end
  end
end
