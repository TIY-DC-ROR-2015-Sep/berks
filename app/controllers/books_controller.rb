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

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(good_params)
    if @book.save
      flash[:success] = "Book added!"
      redirect_to @book
    else
      render :new
    end
  end

  def edit
    @book = Book.find params[:id]
  end

  def update
    @book = Book.find params[:id]
    if @book.update(good_params)
      flash[:success] = "Book updated!"
      redirect_to @book
    else
      render :edit
    end
  end

private

  def good_params
    params.require(:book).permit(:title, :author, :description)
  end
end
