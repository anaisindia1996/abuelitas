class Review < ApplicationRecord
  belongs_to :experience
  belongs_to :user

  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }
end
