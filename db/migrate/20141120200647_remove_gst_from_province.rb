class RemoveGstFromProvince < ActiveRecord::Migration
  def change
    remove_column :provinces, :GST, :integer
  end
end
