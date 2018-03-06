class ProposalPolicy < ApplicationPolicy
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

  def edit?
    true
  end

  def update?
    true
  end

  def confirm?
    record.team.team_members.each do |team_member|
      if team_member.lead_dev
        user == team_member.user
      end
    end
  end

  def destroy?
    user == record.user
  end
end
