class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :description
      t.string :level
      t.integer :price_per_hour
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
