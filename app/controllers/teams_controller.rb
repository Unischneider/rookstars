class TeamsController < ApplicationController
  before_action :team_finder, only: [:show, :edit, :update, :destroy]
  before_action :project_finder, only: [:index, :new, :create, :update]
  def index
    @teams = policy_scope(Team).joins(:team_members).where('team_members.user_id = ? ', current_user.id)
    @project = Project.find(params[:project_id])
    @proposal = Proposal.create
    # @team = @teams.map{ |team| team.users == current_user }
    # @member = @team.team_members.map{ |member| member.user }
  end

  def show
    authorize @team
  end

  def new
    @team = Team.new
    @project = Project.find(params[:project_id])
    # @team_member = TeamMember.new
    authorize @team
  end

  def create
    @team = Team.new
    @proposal = Proposal.create(team: @team, project: @project)
    authorize @team
    # @team.lead_dev = current_user
    if @team.save
      redirect_to new_team_team_member_path(@team)
    end
  end

  def edit
    authorize @team
  end

  def update
    authorize @team
    @project =
    if @team.save
      redirect_to edit_project_proposal_path(@project, @proposal)
    else
      render :edit
    end
  end

  def destroy
    authorize @team
  end

  private

  def team_finder
    @team = Team.find(params[:project_id])
  end

  def project_finder
    @project = Project.find(params[:project_id])
  end

  # def project_params
  #   params.permit(:project).require(:title, :description, :budget, :pic_url, :due_date, :status, :organization_id)
  # end

  def set_params
    params.require(:team).permit(:about_us)
  end
end
