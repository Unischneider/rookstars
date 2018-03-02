class TeamMembersController < ApplicationController
  def new
    @team = Team.find(params[:team_id])
    @team_member = TeamMember.new
    @members = []
    5.times do
      @members << User.new
    end
    authorize @team_member
  end

  def create
    @team = Team.find(params[:team_id])
    # @user = User.find_by_email(params[:team_member][:users][:email]) || User.create(email: params[:team_member][:users][:email], password: "secret", first_name: params[:team_member][:users][:first_name])
    # @team_member = TeamMember.new(lead_dev: team_member_params[:lead_dev])
    users = params[:users].map do |user|
      u = User.find_by_email(user[:email]) || User.create(email: user[:email], first_name: user[:first_name], password: "secret")
      p u.errors.messages
      u
    end
    p users
    users.each do |user|
      @team_member = TeamMember.create(user: user, team: @team, lead_dev: false)
    end
    # params["team_members"].each do |member|
    #   if member["first_name"] != "" || member["email"] != ""
    #     # TeamMember.create(tmem_params)
    #   end
    # end

    # params[:users]
    # @team_member.team = @team
    # @team_member.user = @user
    @project = Project.find(@team.proposals.project.id)
    # # p @team_member
    # # p team_member_params
    authorize @team_member
    if @team_member.id
      redirect_to new_proposal_path(@project)
    else
      render :new
    end
  end

  private

  # def team_params
  #   params.require(:team).permit(:about_us)
  # end

  # def team_member_params
  #   params.require(:team_member).permit(:lead_dev)
  # end

  def user_params
    params[:team_members].permit(:users).require(:first_name, :email)
  end

end
