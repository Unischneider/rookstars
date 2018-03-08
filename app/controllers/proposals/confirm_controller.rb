class Proposals::ConfirmController < ApplicationController
  def edit
    @proposal = Proposal.find(params[:id])
    @team_members = TeamMember.where(team_id: @proposal.team_id)
    authorize @proposal
  end

  def update
    @team_members = TeamMember.where(team_id: @proposal.team_id)
    authorize @proposal

    if current_user
      @proposal.status = params[:status]
    else
      @proposal.status = params[:status]
    end
  end
end
