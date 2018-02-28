class TeamMembersController < ApplicationController
  def new
    @team = Team.new
  end

  def create
  end
end
