class RemoveHstFromProvince < ActiveRecord::Migration
  def change
    remove_column :provinces, :HST, :integer
  end
end
