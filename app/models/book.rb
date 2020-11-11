class Book < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :title, :author, :address, :category, :photo, presence: true
end
