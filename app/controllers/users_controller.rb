class UsersController < ApplicationController
  skip_before_action :authentication_required, only: [:new, :create]

  def new
    #binding.pry
    @user = User.new
  end

  def index
  end



  def create
    @user = User.new(user_params)
    @user.user_name = @user.user_name.downcase
    #binding.pry
    if @user.save
    #binding.pry
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      #binding.pry
      flash[:message] = @user.errors.messages
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @trips = Trip.find_by(user_id: @user.id)
    @trip = Trip.new
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :password, :password_confirmation)
  end
end
