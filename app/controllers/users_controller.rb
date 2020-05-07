class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @activities = @user.activities.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Welcome! Start control your activity'
      redirect_to @user
    else
      render 'new'
    end
  end

  def index
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:name, :password,
                                 :password_confirmation)
  end
end
