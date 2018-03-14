class Organizations::ProjectsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @projects = policy_scope(Project.where(organization_id: current_organization.id))
    @on_goings = @projects.where(status: "On Going")
    @pendings = @projects.where(status: "Pending")
    @dones = @projects.where(status: "Done")
  end

  private
  def pundit_user
    current_organization
  end
end
