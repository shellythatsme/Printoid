# order
class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :CustomerId
      t.string :orderDate

      t.timestamps
    end
  end
end
