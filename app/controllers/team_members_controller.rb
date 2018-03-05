class TeamMembersController < ApplicationController
  def new
    @team = Team.find(params[:team_id])
    @team_member = TeamMember.new
    @users = User.all.where(email: params[:email])
    authorize @team_member
  end

  def create
    @team = Team.find(params[:team_id])
    if params[:email]
      @user = policy_scope(User).find_by_email(params[:email])
      @team_member = TeamMember.create(user: @user, team: @team)
      authorize @team_member
    end
    @team_members = @team.team_members
    respond_to do |format|
      format.js # create.js.erb
    end

    # @team = Team.find(params[:team_id])
    # @members = []
    # 5.times do
    #   @members << User.find(@team_member.user_id)
    # end
    # @user = User.find_by_email(params[:team_member][:users][:email]) || User.create(email: params[:team_member][:users][:email], password: "secret", first_name: params[:team_member][:users][:first_name])
    # # @team_member = TeamMember.new(lead_dev: team_member_params[:lead_dev])
    # users = params[:users].map do |user|
    #   User.find_by_email(user[:email]) || User.create(email: user[:email], first_name: user[:first_name], password: "secret")
    # end
    # users.each do |user|
    #   @team_member = TeamMember.create(user: user, team: @team, lead_dev: false)
    # end
    # params["team_members"].each do |member|
    #   if member["first_name"] != "" || member["email"] != ""
    #     # TeamMember.create(tmem_params)
    #   end
    # end

    # params[:users]
    # @team_member.team = @team
    # @team_member.user = @user
    # @project = Project.find(@team.proposals.project_id)
    # authorize @team_member
    # # @team_members = @team.where{ |team| team.team_members < 2}
    # @team_members = TeamMember.where(team: @team)
    # if @team_members
    #   redirect_to edit_team_path(@team)
    # else
    #   render :new
    # end
  end

  def edit

  end

  private

  def team_params
    params.require(:team).permit(:about_us)
  end

  # def team_member_params
  #   params.require(:team_member).permit(:lead_dev)
  # end

  def user_params
    params[:team_members].permit(:users).require(:first_name, :email)
  end

end
