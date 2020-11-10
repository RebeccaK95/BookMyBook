class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :books
  has_many :bookings

  validates :email, :encrypted_password, presence: true
  validates :email, format: { with: Devise::email_regexp }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
