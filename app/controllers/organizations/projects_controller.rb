class Organizations::ProjectsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @project = Project.new
    @proposal = Proposal.new
    authorize @project
  end

  def create
      @project = Project.new(valid_params)
      authorize @project
      @project.status = "Pending"
      @project.price_cents = @project.budget * 100
      @project.organization = current_organization
      if @project.save
        redirect_to project_path(@project)
      else
        render :new
      end
  end

  def index
    if current_organization
      @projects = policy_scope(Project.where(organization_id: current_organization.id))
      @on_goings = @projects.where(status: "On Going")
      @pendings = @projects.where(status: "Pending")
      @dones = @projects.where(status: "Done")
    else
      @projects = policy_scope(Project.all)
    end
  end

  private
  def pundit_user
    current_organization
  end

  def valid_params
    params.require(:project).permit(:due_date, :budget, :title, :description, :photo, :db_sql, :maps, :forms, :mail_integration, :messaging_integration, :sign_up_log_in, :payment_integration)
  end
end
