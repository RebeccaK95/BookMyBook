class Book < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :title, :author, :address, :category, presence: true
end
