class BookPolicy < ApplicationPolicy
  def show?
    user.present?
  end

  def destroy?
    user.admin?
  end

  def checkout?
    user.present?
  end
end
