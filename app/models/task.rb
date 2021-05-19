class Task < ApplicationRecord
  validates :task,presence: true
  
  has_many :details
end
