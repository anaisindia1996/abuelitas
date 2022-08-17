class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :experiences
  has_many :agent_appointments, through: :experiences, source: :appointments

  validates :first_name, presence: true
  validates :last_name, presence: true
end
