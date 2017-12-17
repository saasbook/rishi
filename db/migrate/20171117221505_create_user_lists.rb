class CreateUserLists < ActiveRecord::Migration
  def change
    create_table :user_lists do |t|
      t.string :email
      t.string :role

      t.timestamps null: false
    end
  end
end
