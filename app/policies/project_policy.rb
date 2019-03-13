class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      return none unless @user

      # @todo maybe by roles?
      scope.joins(:project_users).where(project_users: { user_id: @user.id })
    end
  end
end
