class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Authentication complete!"
    else
      render "new"
    end
  end

  def login
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    else
      redirect_to root_url, :notice => "Invalid email or password. Please try again."
    end
  end
end
