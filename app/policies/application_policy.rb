class ApplicationPolicy
  attr_reader :user, :record

  def initialize(data, record)
    @user = data.user
    @project = data.project
    @location = data.location
    @record = record
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope
    attr_reader :user, :scope

    def initialize(data, scope)
      @user = data.user
      @project = data.project
      @location = data.location
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
