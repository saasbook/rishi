class AddCoordinateToWard < ActiveRecord::Migration
  def change
    add_reference :wards, :coordinate, index: true, foreign_key: true
  end
end
