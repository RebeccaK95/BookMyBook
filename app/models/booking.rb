class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :user, :book, :start_date, :end_date, presence: true
  validate :start_date_cannot_be_in_the_past
  validate :end_date_cannot_be_before_start_date
  validate :reservations_must_not_overlap


  def start_date_cannot_be_in_the_past
    errors.add(:start_date, "Please choose a date from today onwards") if start_date < Date.today
  end

 def end_date_cannot_be_before_start_date
    errors.add(:end_date, "Please choose a later date") if end_date < start_date
  end

private

  def reservations_must_not_overlap
    return if self
                .class
                .where.not(id: id)
                .where(book_id: book_id)
                .where('start_date <= ? AND end_date >= ?', end_date, start_date)
                .none?

    errors.add(:start_date, 'Overlapping reservation exists')
    errors.add(:end_date, 'Overlapping reservation exists')
  end
end
