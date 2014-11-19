class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.integer :gst
      t.integer :pst
      t.integer :hst

      t.timestamps
    end
  end
end
