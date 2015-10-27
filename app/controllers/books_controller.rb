class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find params[:id]
    authorize @book
  end

  def destroy
    book = Book.find params[:id]
    authorize book
    book.destroy
    redirect_to :back
  end
end
