class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :experience

  validates :date, presence: true

  enum status: {
    pending: 0,
    active: 1,
    archived: 2
  }
end
