class ExperienceTag < ApplicationRecord
  belongs_to :experience
  belongs_to :tag

  validates :tag, uniqueness: { scope: :experience, message: 'already taken.' }
end
