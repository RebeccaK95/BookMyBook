class Book < ApplicationRecord
  belongs_to :user

  validates :title, :author, :address, :category, presence: true
end
