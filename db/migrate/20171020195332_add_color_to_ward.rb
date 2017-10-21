class AddColorToWard < ActiveRecord::Migration
  def change
    add_column :wards, :color, :string
  end
end
