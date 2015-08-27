class Project < ActiveRecord::Base
  belongs_to :skill
  belongs_to :user

  validates :status, presence: true
  #validates :check_out
  validates :price, presence: true
  validates :number_of_hours, presence: true

end
