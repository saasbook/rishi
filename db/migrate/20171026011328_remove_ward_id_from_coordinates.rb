class RemoveWardIdFromCoordinates < ActiveRecord::Migration
  def change
    remove_column :coordinates, :ward_id
  end
end
