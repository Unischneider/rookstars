class Proposals::ConfirmController < ApplicationController
  before_action :find_proposal,
  def edit
    @team_members = TeamMember.where(team_id: @proposal.team_id)
    authorize @proposal
  end

  def update
    authorize @proposal
    if current_user
      @proposal.status = params[:status]
      if params[:status] == "Confirmed"
        redirect_to project_classroom
      else
        redirect_to user_path(current_user)
      end
    else
      @proposal.status = params[:status]
      redirect_to proposals_path
    end
  end

  private

  def find_proposal
    @proposal = Proposal.find(params[:id])
  end
end
