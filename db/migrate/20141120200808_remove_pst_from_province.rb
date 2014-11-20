class RemovePstFromProvince < ActiveRecord::Migration
  def change
    remove_column :provinces, :PST, :integer
  end
end
