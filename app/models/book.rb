class Book < ActiveRecord::Base
  validates_presence_of :title, :author

  has_many :checkouts
  has_many :borrowers, through: :checkouts, source: :user
end
