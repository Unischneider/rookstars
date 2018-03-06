class TeamsController < ApplicationController
  before_action :team_finder, only: [:show, :edit, :update, :destroy]

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
    @project = Project.find(params[:project_id])
    @team = Team.new
    authorize @team
  end

  def create
    @team = Team.new
    authorize @team
    if @team.save
      @team_member = TeamMember.create(user: current_user, team: @team, lead_dev: true)
      @project = Project.find(params[:project_id])
      @proposal = Proposal.create(team: @team, project: @project)
      redirect_to new_team_team_member_path(@team)
    end
  end

  def edit
    authorize @team
    @project = Project.find(@team.projects.first.id)
  end

  def update
    @team.update(team_params)
    authorize @team
    @project = Project.find(@team.projects.first.id)
    @proposal = Proposal.find_by(team: @team, project: @project)
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
    @team = Team.find(params[:id])
  end

  def project_params
    params.permit(:project).require(:title, :description, :budget, :pic_url, :due_date, :status, :organization_id)
  end

  def team_params
    params.require(:team).permit(:about_us)
  end
end
