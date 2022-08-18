class Tag < ApplicationRecord
  has_many :experience_tags, dependent: :destroy
end
