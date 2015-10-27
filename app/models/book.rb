class Book < ActiveRecord::Base
  validates_presence_of :title, :author

  has_many :checkouts
  has_many :borrowers, through: :checkouts, source: :user

  def last_checkout
    checkouts.order(created_at: :desc).first
  end

  def checked_out?
    !last_checkout.nil? && !last_checkout.returned?
  end

  def due_at
    last_checkout.created_at + 2.weeks
  end

  def overdue?
    checked_out? && Time.now > due_at
  end
end
