class Organizations::ProposalsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @proposals = policy_scope(Proposal.joins(:project).where(projects: {organization_id: current_organization.id}))
    @org_accept = @proposals.where(status: "Pending NGO confirmation")
    @dev_accept = @proposals.where(status: "Pending Developer confirmation")
  end

  private
  def pundit_user
    current_organization
  end
end
