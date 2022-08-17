class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :experience

  validates :date, presence: true
end
