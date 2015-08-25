class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :status
      t.date :check_out
      t.integer :price
      t.integer :number_of_hours
      t.references :skill, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
