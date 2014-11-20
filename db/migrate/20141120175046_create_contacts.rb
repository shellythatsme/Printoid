class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :title
      t.text :content
      t.string :phoneNumber
      t.string :postalCode
      t.string :email

      t.timestamps
    end
  end
end
