class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user.id)

  end

  def new
    @booking = Booking.new
  end

  def create
    @book = Book.find(params[:book_id])
    @booking = Booking.new(params_bookings)
    @booking.book = @book
    @booking.user = current_user

    if @booking.save
      redirect_to user_bookings_path(@booking.user)
    else
      render "books/show"
    end
  end

private

  def params_bookings
    params.require(:booking).permit(:start_date, :end_date, :user_id, :book_id)
  end
end
