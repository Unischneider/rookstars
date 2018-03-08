class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @projects = policy_scope(Project)
  end

  def show
    set_params
    authorize @project
    @organization = Organization.find(@project.organization_id)
    @project_member = is_part_of_project?
  end

  def new
    @project = Project.new
    @proposal = Proposal.new
    authorize @project
  end

  def create
    if current_user.class == Organization.class
      @project = Project.new(valid_params)
      authorize @project
      @project.organization = current_user
      if @project.save
        redirect_to project_path(@project)
      else
        render :new
      end
    else
      @project = Project.new(user_project_params)
      @project.status = "Done"
      @project.due_date = DateTime.now.to_date
      @project.budget = 100
      if @organization = Organization.find_by(name: params[:project][:organization])
        @project.organization = @organization
      else
        @organization = Organization.create(name: params[:project][:organization], description: "selfcreated", email:"selfcreated#{Organization.last.id}@rook.com", password:"19823747288")
      end
      authorize @project
      @team = Team.new(about_us: current_user.about_me)
      team_member = TeamMember.create(team: @team, user: current_user, lead_dev: true)
      if @project.save
        proposal = Proposal.create(team: @team, project: @project, status: "Confirmed")
        redirect_to user_path(current_user)
      else
        render :new
      end
    end
  end

  def update
    set_params
    @proposal = Proposal.find(params[:id])
    redirect_to project_proposal_path(@project, @proposal)
    authorize @project
  end

  def classroom
    @project = Project.find(params[:project_id])
    authorize @project
  end

  private

  def is_part_of_project?
    @project.proposals.each do |proposal|
      if proposal.status == "Confirmed"
        @joinable = proposal.joinable
        proposal.team_members.each do |team_member|
          return true if team_member.user == current_user
        end
      else
        proposal.team_members.each do |team_member|
          @proposal_pending = team_member.user == current_user
          @proposal = proposal if team_member.user == current_user
        end
      end
    end
    return false
  end

  def set_params
    @project = Project.find(params[:id])
  end

  def valid_params
    params.require(:project).permit(:title, :description, :due_date, :status, :budget, :photo)
  end

  def user_project_params
    params.require(:project).permit(:title, :description, :photo, :db_sql, :maps, :forms, :mail_integration, :messaging_integration, :sign_up_log_in, :payment_integration)
  end
end
