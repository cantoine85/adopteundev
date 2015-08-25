class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates :description, presence: true
  validates :description, length: { minimum: 10 }
  validates :skill_rating, inclusion: { in: [1,2,3,4,5], allow_nil: false }
end
