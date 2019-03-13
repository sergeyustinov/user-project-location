class LocationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      return none unless @user

      # @todo maybe by roles?
      sc = @user.locations

      sc = sc.merge(scope) if scope.to_s != 'Location'
      sc
    end
  end
end
