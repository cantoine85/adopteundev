class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :mail
      t.string :phone_number
      t.string :description
      t.string :address

      t.timestamps null: false
    end
  end
end
