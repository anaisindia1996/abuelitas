class Review < ApplicationRecord
  belongs_to :experience

  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }
end
