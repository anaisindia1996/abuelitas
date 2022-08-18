class Experience < ApplicationRecord
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  has_many :appointments

  has_many :experience_tags, dependent: :destroy
  has_many :tags, through: :experience_tags

  belongs_to :user
  geocoded_by :address

  validates :grandma_name, presence: true
  validates :activity_name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
