class CommentPolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    true
  end

  def show?
    user.admin? || record.user_id == user.id
  end

  def update?
    user.admin? || record.user_id == user.id
  end

  def destroy?
    user.admin? || record.user_id == user.id
  end
end
