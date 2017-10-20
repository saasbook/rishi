class CreateCoordinates < ActiveRecord::Migration
  def change
    create_table :coordinates do |t|
      t.references :ward
      t.integer :lat
      t.integer :lng
      t.timestamps null: false
    end
  end
end
