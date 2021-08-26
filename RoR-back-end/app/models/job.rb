class Job < ApplicationRecord
  belongs_to :company
  has_many :interviews
  has_many :activities
end
