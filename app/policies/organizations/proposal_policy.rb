class Organizations::ProposalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(id: current_organization.id)
    end
  end
end
