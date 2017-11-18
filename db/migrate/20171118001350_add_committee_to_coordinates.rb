class AddCommitteeToCoordinates < ActiveRecord::Migration
  def change
    add_reference :coordinates, :committee, index: true, foreign_key: true
  end
end
