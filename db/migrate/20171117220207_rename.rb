class Rename < ActiveRecord::Migration
  def change
    rename_table :user_lists, :user_list
  end
end
