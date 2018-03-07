class OrganizationsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def show
    @organization = Organization.find(params[:id])
    authorize @organization
    @projects = Project.where(organization: @organization)
  end

  def landing
    @organization = Organization.new
    authorize @organization
    @projects = policy_scope(Project)
  end
end
