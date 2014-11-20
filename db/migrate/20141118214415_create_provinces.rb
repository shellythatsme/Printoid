class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.decimal :gst
      t.decimal :pst
      t.decimal :hst
      t.string  :name

      t.timestamps
    end
  end
end
