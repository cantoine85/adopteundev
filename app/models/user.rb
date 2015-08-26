class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :skills
  has_many :reviews
  has_many :projects

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, format: { with: /[a-zA-Z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}/ }, uniqueness: true
  # validates :address, presence: true
  # validates :description, length: { minimum: 10 }

end
