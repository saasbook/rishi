class RemoveCommitteeIdFromCoordinate < ActiveRecord::Migration
  def change
    remove_column :coordinates, :committee_id, :integer
  end
end
