class AddFloatCoordinatesToCoordinate < ActiveRecord::Migration
  def change
    change_column :coordinates, :lat, :float
    change_column :coordinates, :lng, :float
  end
end
