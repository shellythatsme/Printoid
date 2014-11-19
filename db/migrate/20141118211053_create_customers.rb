class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :firstName
      t.string :lastName
      t.string :address
      t.string :city
      t.string :province
      t.string :email
      t.string :phoneNumber
      t.string :picture

      t.timestamps
    end
  end
end
