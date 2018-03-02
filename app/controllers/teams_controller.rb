class TeamsController < ApplicationController

  def index
    @teams = policy_scope(Team).joins(:team_members).where('team_members.user_id = ? ', current_user.id)
    @project = Project.find(params[:project_id])
    @proposal = Proposal.create
  end

  def show
    @team = Team.find(params[:id])
    authorize @team
  end

  def new
    @project = Project.find(params[:project_id])
    @team = Team.new
    #@team_members = TeamMember.where(user_id: current_user.id)
    authorize @team
  end

  def create
    @team = Team.new
    @proposal = Proposal.create(team: @team)
    authorize @team
    @project = @team.proposals.project_id
    # @team.lead_dev = current_user
    if @team.save
    redirect_to new_team_team_member_path(@team)
    end
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
