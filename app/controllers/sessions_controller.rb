class SessionsController < ApplicationController
   def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
  	if user && user.authenticate(params[:session][:password])
      signin user
      flash[:success] = "Welcome back"
  		redirect_to user
  	else
  		render :new
  	end
  end

  def destroy
  	signout
  	flash[:success] = "See you"
    redirect_to root_path
  end

end

