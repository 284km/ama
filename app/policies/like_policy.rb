class LikePolicy < ApplicationPolicy
  def create?
    record.none? { |like| like.user_id == user.id }
  end

  def destroy?
    record.any? { |like| like.user_id == user.id }
  end
end
