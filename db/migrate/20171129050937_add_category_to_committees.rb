class AddCategoryToCommittees < ActiveRecord::Migration
  def change
    add_column :committees, :category, :string
  end
end
