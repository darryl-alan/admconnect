class LoginController < ApplicationController
  def index
  end

  def login
    user = User.find_by(username: params[:login][:username].downcase)
    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id
      flash[:success] = "Logged in successfully"
      redirect_to root_path
    else
      flash.now[:error] = "Invalid login credentials"
      render "index"
    end
  end

  def logout
    session[:user_id] = nil
    flash[:success] = "You're logged out"
    redirect_to login_path
  end
end
