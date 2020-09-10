class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :user do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :pnum
      t.timestamps
    end
  end
end
