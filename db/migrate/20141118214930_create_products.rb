# products table
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.integer :price
      t.string :picture
      t.text :description

      t.timestamps
    end
  end
end
