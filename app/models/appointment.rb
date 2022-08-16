class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :experience

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :date, presence: true
end
