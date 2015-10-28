class BookPolicy < ApplicationPolicy
  def show?
    user.present?
  end

  def checkout?
    user.present?
  end
end
