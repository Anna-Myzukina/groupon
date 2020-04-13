class StaticPagesController < ApplicationController
  def home
    @activity = current_user.activities.build if logged_in_user
  end

  def profile
  end
end
