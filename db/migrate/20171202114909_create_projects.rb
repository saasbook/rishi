class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :intro
      t.string :intro_img
      t.timestamps null: false
    end
  end
end
