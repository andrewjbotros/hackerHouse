class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  def edit
  end

  def update
    if @user.update(user_params)
      # signin @user
      flash[:success] = "Your account has been udpated succcessfully"
      redirect_to @user
    else
      render :new
    end
  end

  def destroy
  end

private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit( :username, :email, :password, :password_confimation)
  end

end