class Organizations::ProposalsController < ApplicationController
  def index
    @proposals = Proposal.where(organization: current_organization)
  end
end
