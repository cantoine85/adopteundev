class Skill < ActiveRecord::Base
  belongs_to :user
  has_many :projects

  validates :name, presence: true
  validates :description, presence: true
  validates :level, presence: true
  validates :price_per_hour, presence: true

end
