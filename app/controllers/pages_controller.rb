class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @projects = Project.all.first(6)
  end

  def contact_us
    @marker =
      {
        lat: 52.506972,
        lng: 13.391486,
      }

  end
end
