class AddWardIdToCommittees < ActiveRecord::Migration
  def change
    add_column :committees, :ward_id, :integer
  end
end
