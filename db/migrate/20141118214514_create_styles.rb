# the styles created by user
class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :colour
      t.string :img
      t.text :text

      t.timestamps
    end
  end
end
