class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :productName
      t.integer :categoryID
      t.integer :quantity
      t.double :price
      t.string :picture
      t.text :description

      t.timestamps
    end
  end
end
