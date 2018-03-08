class OrganizationPolicy < ApplicationPolicy
class Scope < Scope
    def resolve
      scope.all
    end
  end

  def edit?
    user == record
  end

  def show?
    true
  end

  def landing?
    true
  end
end
