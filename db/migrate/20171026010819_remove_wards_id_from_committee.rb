class RemoveWardsIdFromCommittee < ActiveRecord::Migration
  def change
    remove_column :committees, :wards_id
  end
end
