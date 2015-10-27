class Checkout < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  def returned?
    returned_at.present?
  end
end
