class BooksController < ApplicationController
  def index
    if params[:query].present?
      @books = Book.pg_search(params[:query])
    else
      @books = Book.all
    end
  end

  def show
    @book = Book.find(params[:id])
    @booking = Booking.new
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to user_bookings_path(current_user)
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :category, :address, :user_id, :photo, :description)
  end
end
