class CreateUserList < ActiveRecord::Migration
  def change
    create_table :user_lists do |t|
      t.string :email
      t.string :role
    end
  end
end
