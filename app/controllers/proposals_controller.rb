class ProposalsController < ApplicationController
  before_action :project_finder, only: [:show, :new, :create, :edit, :update]
  before_action :proposal_finder, only: [:show, :edit, :update, :confirm]

  def index
    @proposals = policy_scope(Proposal).where(user: current_user)
  end

  def show
    @proposal.project = @project
    @team = Team.find(@proposal.team_id)
    @team_members = TeamMember.where(team_id: @proposal.team_id)
    authorize @proposal
    authorize @project
  end

  def new
    @proposal = Proposal.new
    team = Team.find(params[:proposal][:team])
    @proposal.team = team
    authorize @proposal
  end

  def create
    @proposal = Proposal.new(proposal_params)
    @proposal.project = @project
    @proposal.status = "Pending NGO validation"
    team = Team.find(params[:proposal][:team])
    @proposal.team = team
    authorize @proposal
    if @proposal.save
      redirect_to edit_project_proposal_path(@project.id, @proposal.id)
    else
      redirect_to project_teams_path(@project)
    end
  end

  def edit
    @projects = Project.all
    @team = Team.find(@proposal.team_id)
    @proposal.team = @team
    authorize @proposal
  end

  def update
    @proposal.status = "Pending NGO validation"
    @proposal.update(proposal_params)
    @team = Team.find(@proposal.team_id)
    @proposal.team = @team
    @proposal.save!
    authorize @proposal
    redirect_to project_proposal_path(@project, @proposal)
  end

  def destroy
    authorize @proposal
    @proposal.destroy
    redirect_to proposals_path
  end

  def confirm
    @team_members = TeamMember.where(team_id: @proposal.team_id)
    authorize @proposal
  end

  private

  def proposal_finder
    @proposal = Proposal.find(params[:id])
  end

  def proposal_params
    params.require(:proposal).permit(:team_id, :project_id, :pitch)
  end

  def team_params
    params.require(:team).permit(:about_us)
  end

  def project_finder
    @project = Project.find(params[:project_id])
  end
end
