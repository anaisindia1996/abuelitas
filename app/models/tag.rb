class Tag < ApplicationRecord
  has_many :experience_tags, dependent: :destroy
  belongs_to :experience, optional: false
end
