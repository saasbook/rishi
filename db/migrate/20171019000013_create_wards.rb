class CreateWards < ActiveRecord::Migration
  def change
    create_table :wards do |t|
      t.string :name
      t.string :polygons, array: true, default: []
    end
  end
end
