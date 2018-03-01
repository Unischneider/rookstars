class TeamsController < ApplicationController

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
    @team = Team.new(set_params)

    authorize @team
    # @team.lead_dev = current_user
    if @team.save
      redirect_to new_team_team_member_path(@team)
    else
      render :new
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
