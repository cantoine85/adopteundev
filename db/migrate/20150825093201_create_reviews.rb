class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true
      t.string :description
      t.integer :skill_rating

      t.timestamps null: false
    end
  end
end
