class Organizations::ProposalsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    # @proposals = Proposal.where(project: current_organization)
    raise
    authorize @proposals
  end

  private
  def pundit_user
    current_organization
  end
end
