class AddPstToProvince < ActiveRecord::Migration
  def change
    add_column :provinces, :PST, :decimal
  end
end
