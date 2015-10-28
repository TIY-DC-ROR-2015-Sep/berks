class CheckoutsController < ApplicationController
  def create
    book = Book.find params[:book_id]
    authorize book, :checkout?
    if book.checked_out?
      flash[:warning] = "This book is already checked out"
    else
      current_user.checkout book
      flash[:success] = "You checked out #{book.title}. It's due back at #{book.due_at}"
    end
    redirect_to :back
  end

  def checkin
    checkout = current_user.checkouts.find params[:checkout_id]
    authorize checkout
    checkout.update! returned_at: Time.now
    redirect_to :back
  end
end
