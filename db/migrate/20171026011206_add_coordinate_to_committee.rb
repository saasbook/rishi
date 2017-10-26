class AddCoordinateToCommittee < ActiveRecord::Migration
  def change
    add_reference :committees, :coordinate, index: true, foreign_key: true
  end
end
