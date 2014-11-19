class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :colour

      t.timestamps
    end
  end
end
