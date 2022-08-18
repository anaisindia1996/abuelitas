class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :experience

  validates :date, presence: true

  enum status: {
    Pending: 0,
    Confirmed: 1,
    Declined: 2
  }
end
