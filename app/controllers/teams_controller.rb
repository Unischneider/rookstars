class TeamsController < ApplicationController

  def show
    authorize @team
  end

  def new
    @team = Team.new
    @project = Project.find(params[:project_id])
    @team_member = TeamMember.new
    authorize @team
  end

  def create
    @team = Team.new
    @project = Project.find(params[:project_id])
    authorize @team

    if @team.save
      redirect_to project_team_team_members_path(@project, @team)
    else
      render :new
    end
    # @toothbrush = Toothbrush.find(params[:toothbrush_id])
    # @booking = Booking.new(booking_params)
    # @booking.toothbrush = @toothbrush
    # @booking.user = current_user
    # @booking.status = "Pending owner validation"
    # total_price
    # authorize @booking
    # if @booking.save
    #   redirect_to booking_path(@booking)
    # else
    #   render :new
    # end
  end


  def destroy
    authorize @team
  end

  private

  # def project_params
  #   params.permit(:project).require(:title, :description, :budget, :pic_url, :due_date, :status, :organization_id)
  # end

  # def valid_params
  #   params.permit(:team).require(:about_us)
  # end
end
