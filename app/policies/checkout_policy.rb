class CheckoutPolicy < ApplicationPolicy
  def checkin?
    user == record.user
  end
end
