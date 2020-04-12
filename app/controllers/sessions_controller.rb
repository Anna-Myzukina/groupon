class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user
      login_url @user
      flash[:success] = 'Successfully logged in!'
      redirect_to @user
    else
      flash[:success] = 'user not found!'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
