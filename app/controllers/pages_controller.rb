class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact_us]

  def home
    @projects = Project.all.first(4)
  end

  def contact_us
    @markers = [{
        lat: "52.506972",
        lng: "13.391486",
        icon: ActionController::Base.helpers.image_url('pointer.png')
      }]

    @project = Project.all.first
    @organization = Organization.all.first
  end
end
