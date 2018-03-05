class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def classroom?
    access = false
    user.teams.each do |team|
      record.teams.each do |project_team|
        if team == project_team
          access = true
        end
      end
    end
    access
  end
end
