# frozen_string_literal: true

class ServicePolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    return @user && @user.has_any_role?(:admin, :provider)
  end

  def show?
    return @user && @user.has_any_role?(:admin, :provider)
  end

  def create?
    return @user && @user.has_any_role?(:admin, :provider)
  end

  def new?
    create?
  end

  def update?
    return @user && @user.has_any_role?(:admin, :provider)
  end

  def edit?
    update?
  end

  def destroy?
    return @user && @user.has_any_role?(:admin, :provider)
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      raise NotImplementedError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :user, :scope
  end
end
