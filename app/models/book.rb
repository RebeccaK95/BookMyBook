class Book < ApplicationRecord
  belongs_to :user
  CATEGORIES = ["graphic novel", "fantasy", "short stories", "classics"]

  validates :title, :author, :address, :category, presence: true
end
