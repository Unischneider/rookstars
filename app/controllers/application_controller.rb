class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  # def create
  #   if params.has_key?("team_members")
  #     TeamMember.create(tmem_params(params["team_members"]))
  #   else
  #     params["team_members"].each do |member|
  #       if puppy["name"] != ""
  #         TeamMember.create(tmem_params(member))
  #       end
  #     end
  #   end
  # end
  def default_url_options
    { host: ENV["www.rookstars.eu"] || "localhost:3000" }
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)|(^contacts$)/ || params[:controller] == "thredded/preferences" || params[:controller] == "thredded/private_topics" || params[:controller] == "thredded/moderation"
  end
end
