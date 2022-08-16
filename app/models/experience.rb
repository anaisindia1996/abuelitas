class Experience < ApplicationRecord
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  has_many :appointments
  belongs_to :user

  validates :grandma_name, presence: true
  validates :activity_name, presence: true
  validates :availability, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end
