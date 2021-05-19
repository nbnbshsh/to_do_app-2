class Task < ApplicationRecord
  validates :task,presence: true
  has_many :reviews,dependent: :destroy 
end
