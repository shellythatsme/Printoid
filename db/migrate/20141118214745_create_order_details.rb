class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :OrderID
      t.integer :ProductID
      t.integer :unitPrice
      t.integer :quanitity

      t.timestamps
    end
  end
end
