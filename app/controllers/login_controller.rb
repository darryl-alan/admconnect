class LoginController < ApplicationController
  before_action :require_not_logged_in, only: [:index, :login]
  before_action :require_user, only: [:logout]
  
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

  private

  def require_not_logged_in
    if logged_in?
      flash[:error] = "You're already logged in"
      redirect_to root_path
    end
  end
end
