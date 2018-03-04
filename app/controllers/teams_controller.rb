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
    authorize @team
  end

  def create
    @team = Team.new
    authorize @team
    if @team.save
      @proposal = Proposal.create(team: @team, project: @project)
      redirect_to new_team_team_member_path(@team)
    end
  end

  def edit
    authorize @team
  end

  def update
    authorize @team
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

  def project_finder
    @team = Team.new
    @project = Project.find(@team.project_ids)
  end

  def project_params
    params.permit(:project).require(:title, :description, :budget, :pic_url, :due_date, :status, :organization_id)
  end

  def set_params
    params.require(:team).permit(:about_us)
  end
end
