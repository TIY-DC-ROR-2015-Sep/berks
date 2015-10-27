class CheckoutPolicy
  attr_reader :user, :checkout

  def initialize user, checkout
    @user, @checkout = user, checkout
  end

  def checkin?
    user == checkout.user
  end
end
