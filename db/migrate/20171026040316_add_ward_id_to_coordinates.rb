class AddWardIdToCoordinates < ActiveRecord::Migration
  def change
    add_column :coordinates, :ward_id, :integer
  end
end
