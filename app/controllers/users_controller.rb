class UsersController < ApplicationController
  def index
    @user = current_user
    @users = if params[:term]
      policy_scope(User).where('email LIKE ?', "%#{params[:term]}%")
    end
    if @users
      respond_to do |format|
        format.js
      end
    end
  end

  def show
    @user = User.find(params[:id])
    # @team_members = TeamMember.where(user: @user)
    # @team_members.each do |team|
    #   @apps =  Application.select(team_id: team.id)
    # end
    authorize @user
  end

  private
  def set_params
    params.require(:user).permit(:first_name, :email, :password, :term)
  end
end
