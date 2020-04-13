class ActivitiesController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]

    def new
    end

    def show
    end
    
    def create
        @activity = current_user.activities.build(activity_params)
        if @activity.save
          flash[:success] = "ctivities created!"
          redirect_to root_url
        else
          render 'static_pages/home'
        end
    end
    
    def destroy
    end
    
    def index
    end

    def update
    end
      private
    
    def activity_params
          params.require(:activity).permit(:content)
    end
end
