class DropPolygonsColumnFromWard < ActiveRecord::Migration
  def change
    remove_column :wards, :polygons
  end
end
