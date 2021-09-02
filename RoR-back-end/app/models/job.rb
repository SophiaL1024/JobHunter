class Job < ApplicationRecord
  belongs_to :company
  belongs_to :user
  has_many :interviews
  has_many :activities

  validates :title, presence: true
  validates :url, presence: true
end
