class TableSkillsChangeTypeOfDescriptionStringToText < ActiveRecord::Migration
  def change
    change_column :skills, :description, :text
  end
end
