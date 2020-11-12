class Book < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :title, :author, :address, :category, :photo, presence: true

  include PgSearch::Model
  pg_search_scope :pg_search,
  against: [:title, :author, :category],
  using: {
  	tsearch: {prefix: true}
  }
end
