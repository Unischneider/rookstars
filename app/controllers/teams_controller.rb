class TeamsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    authorize @team
  end

  def new
    @team = Team.new
    authorize @team
  end

  def create
    @team = Team.new(valid_params)
    authorize @team
  end


  def destroy
    authorize @team
  end

  private

  def valid_params
    params.permit(:team).require(:about_us)
  end
end
