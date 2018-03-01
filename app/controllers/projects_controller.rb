class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @projects = policy_scope(Project)
  end

  def show
    set_params
    authorize @project
    @organization = Organization.find(@project.organization_id)
  end

  def new
    @project = Project.new
    @proposal = Proposal.new
    authorize @project
  end

  def create
    @project = Project.new(valid_params)
    authorize @project
    @project.organization = current_user
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def classroom
    @project = Project.find(params[:project_id])
    authorize @project
  end

  private

  def set_params
    @project = Project.find(params[:id])
  end

  def valid_params
    params.permit(:project).require(:title, :description, :due_date, :status, :budget, :photo)
  end

end
