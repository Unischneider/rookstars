class ProjectsController < ApplicationController
  def new
    @project = Project.new
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

  def show
    @project = Project.find(params[:id])
    authorize @project
  end

  def index
    @projects = policy_scope(Project)

  end

  private

  def valid_params
    params.permit(:project).require(:title, :description, :due_date, :status, :budget, :pic_url)
  end

end
