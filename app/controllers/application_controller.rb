class ApplicationController < ActionController::Base
  protect_from_forgery

  def start
    # nothing
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

 private
  def deal
    if User.count < 2
      return
    end
  end

end
