class AddHstToProvince < ActiveRecord::Migration
  def change
    add_column :provinces, :HST, :decimal
  end
end
