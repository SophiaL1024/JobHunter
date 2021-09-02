class User < ApplicationRecord
  has_many :companies
  has_many :jobs
  has_many :statuses


  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

end
