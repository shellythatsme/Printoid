class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.decimal :gst
      t.decimal :pst
      t.decmial :hst

      t.timestamps
    end
  end
end
