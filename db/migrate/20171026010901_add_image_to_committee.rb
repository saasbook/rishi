class AddImageToCommittee < ActiveRecord::Migration
  def change
    add_column :committees, :image_url, :string
  end
end
