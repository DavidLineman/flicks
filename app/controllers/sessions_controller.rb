class SessionsController < ApplicationController

  def new
    
  end

  def create
    user = User.find_by(email: params[:email]) || User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      redirect_to user, notice: "Welcome back, #{user.name}"
    else 
      flash.now[:alert] = "Invalid email/password combination!"
      render :new
    end
  end

  def destroy
    
  end

end
