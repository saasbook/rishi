class RemoveTableUserLists < ActiveRecord::Migration
  def change
    drop_table :user_lists
  end
end
