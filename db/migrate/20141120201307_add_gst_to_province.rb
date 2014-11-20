class AddGstToProvince < ActiveRecord::Migration
  def change
    add_column :provinces, :GST, :decimal
  end
end
