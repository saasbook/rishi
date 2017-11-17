class RemoveTableUserList < ActiveRecord::Migration
  def change
    drop_table :user_list
  end
end
