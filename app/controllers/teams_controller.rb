class TeamsController < ApplicationController

  def index
    @teams = policy_scope(Team).joins(:team_members).where('team_members.user_id = ? ', current_user.id)
    @project = Project.find(params[:project_id])
    @proposal = Proposal.create
    # @team = @teams.map{ |team| team.users == current_user }
    # @member = @team.team_members.map{ |member| member.user }
  end

  def show
    @team = Team.find(params[:id])
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
    @project = Project.find(params[:project_id])
    @proposal = Proposal.create(team: @team, project: @project)
    authorize @team
    # @team.lead_dev = current_user
    if @team.save
      redirect_to new_team_team_member_path(@team)
    end
  end

def edit
  @team = Team.find(params[:id])
  authorize @team
end

  def destroy
    authorize @team
  end

  private

  # def project_params
  #   params.permit(:project).require(:title, :description, :budget, :pic_url, :due_date, :status, :organization_id)
  # end

  def set_params
    params.require(:team).permit(:about_us)
  end
end
