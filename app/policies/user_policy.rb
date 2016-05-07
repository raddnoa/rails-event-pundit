class UserPolicy < ApplicationPolicy
  def index?
    # user.manager?
    user.has_role? :manager
  end

  def resolve
    if user.has_role? :manager
      scope.limit(1)
    end
  end
end
