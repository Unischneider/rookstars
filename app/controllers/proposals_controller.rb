class ProposalsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]

  def index
    @proposals = policy_scope(Proposal).where(user: current_user)
  end

  def show
    @project = @proposal.project
    @team_members = TeamMember.where(team_id: @proposal.team_id)
    authorize @proposal
    authorize @project
  end

  def new
    @project = Project.find(params[:project_id])
    @proposal = Proposal.new
    authorize @proposal
  end

  def create
    @project = Project.find(params[:project_id])
    @proposal = proposal.new(proposal_params)
    @proposal.project = @project
    @proposal.user = current_user
    @proposal.status = "Pending NGO validation"
    authorize @proposal
    if @proposal.save
      redirect_to proposal_path(@proposal)
    else
      render :new
    end
  end

  def update
    @proposal.status = "Pending NGO validation"
    @proposal.save!
    redirect_to proposal_path(@proposal)
  end

  def destroy
    authorize @proposal
    @proposal.destroy
    redirect_to proposals_path
  end

  def confirm

  end

  private

  def booking_params
    params.require(:proposal).permit(:pitch, :status)
  end

  def set_booking
    @proposal = Proposal.find(params[:id])
  end
end
