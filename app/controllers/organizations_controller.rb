class OrganizationsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
  end

  def create
  end

  def update
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def show
    @organization = Organization.find(params[:id])
    authorize @organization
    @projects = Project.where(organization: @organization)
    @markers = [{
        lat: "52.506972",
        lng: "13.391486",
        icon: ActionController::Base.helpers.image_url('pointer.png')
      }]
  end

  def landing
    @organization = Organization.new
    authorize @organization
    @projects = policy_scope(Project)
  end

  def pundit_user
    current_organization
  end
end
