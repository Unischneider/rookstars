class TeamMembersController < ApplicationController
  def new
    @team = Team.new
    @team_member = TeamMember.new
  end

  def create
  end
end
