class BookPolicy
  attr_reader :user, :book

  def initialize user, book
    @user, @book = user, book
  end

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
