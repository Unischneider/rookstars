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
    @organization = Organization.new
    authorize @organization
  end

  def landing
    @organization = Organization.new
    authorize @organization
    @projects = policy_scope(Project)
  end
end
