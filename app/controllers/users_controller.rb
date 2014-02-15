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
    if @user.save
<<<<<<< HEAD
      redirect_to @user, :notice => "Signed Up"
    else
      render "new"
=======
      # signin @user
      flash[:success] = "Your account has been created succcessfully"
      redirect_to @user
    else
      render :new
>>>>>>> 0c8972cbd76fb20c8d2513b3e386769e250318ab
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      # signin @user
      flash[:success] = "Your account has been updated successfully"
      redirect_to @user
    else
      render :new
    end
  end

  def destroy
    if @user.destroy
      # signout
      flash[:success] = "Your account has been removed succcessfully"
      redirect_to root_path
    end
  end

private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit( :username, :email, :password, :password_confimation)
  end

end