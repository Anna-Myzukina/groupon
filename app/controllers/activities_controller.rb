class ActivitiesController < ApplicationController
  before_action :authorized 
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  def index 
      @activities = Activity.all
      @activity = Activity.new
  end

  def show 
  end

  def new 
      @activities = Activity.all
      @activity = Activity.new
  end

  def create 
      @activity = current_user.activities.new(activity_params)
      if @activity.save 
          flash[:success] = "Activity created successfully!"
          redirect_to activities_path
      else
          flash.now[:danger] = "Activity wasn`t created"
          render :new
      end
  end

  def edit 
  end

  def update 
      if @activity.update(activity_params)
          flash[:success] = "Activity updated successfully!"
          redirect_to activities_path
      else
          flash.now[:danger] = "Activity wasn`t updated"
          render :edit
      end
  end

  def destroy 
      @activity.destroy
      redirect_to activities_path
  end

  private

  def set_activity 
      @activity = Activity.find(params[:id])
  end

  def activity_params
      params.require(:activity).permit(:name, :hours, group_ids:[])
  end
end
