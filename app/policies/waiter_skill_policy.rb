class WaiterSkillPolicy < ApplicationPolicy
  def create?
    user && user.admin?
  end

  def destroy?
    create?
  end
end
