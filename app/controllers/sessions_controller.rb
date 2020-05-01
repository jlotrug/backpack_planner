class SessionsController < ApplicationController
  skip_before_action :authentication_required, only: [:new, :create]

  def new

  end

  def create
    #binding.pry
    @user = User.find_by(user_name: params[:user_name].downcase)
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      #binding.pry
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end
end
