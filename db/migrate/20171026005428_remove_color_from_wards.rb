class RemoveColorFromWards < ActiveRecord::Migration
  def change
    remove_column :wards, :color
  end
end
