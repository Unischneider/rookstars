class Organizations::ProposalsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @proposals = policy_scope(Proposal.joins(project: :organization))
    binding.pry
  end

  private
  def pundit_user
    current_organization
  end
end
