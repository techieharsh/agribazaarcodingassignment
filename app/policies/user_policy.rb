class UserPolicy < ApplicationPolicy

  def index?
    user.has_role?(:admin)
  end

  def edit?
    user.has_role?(:admin)
  end

end