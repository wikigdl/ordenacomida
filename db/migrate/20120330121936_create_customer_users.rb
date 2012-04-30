class CreateCustomerUsers < ActiveRecord::Migration
  def change
    create_table :customer_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
