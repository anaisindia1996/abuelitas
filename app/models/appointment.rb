class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :experience

  validates :date, presence: true

  enum status: {
    pending: 0,
    confirmed: 1,
    declined: 2
  }
end
