class User < ActiveRecord::Base
  validates_presence_of :email, :name, :password
end
