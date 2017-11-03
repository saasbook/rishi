class AddLatAndLongToWards < ActiveRecord::Migration
  def change
    add_column :wards, :ward_lat, :float
    add_column :wards, :ward_long, :float
  end
end
