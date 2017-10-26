class AddCommitteeToWard < ActiveRecord::Migration
  def change
    add_reference :wards, :committee, index: true, foreign_key: true
  end
end
