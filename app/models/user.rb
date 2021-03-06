class User < ActiveRecord::Base
  has_many :checkouts
  has_many :checked_out_books, through: :checkouts, source: :book

  has_secure_password

  validates_presence_of :email, :name, :password

  def checkout book
    checkouts.create! book: book
  end

  def has? book
    checkouts.where(returned_at: nil, book: book).exists?
  end
end
