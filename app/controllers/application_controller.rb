class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :current_user
  before_action :authenticate_user!
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def checkAdmin!
    if session[:user_isAdmin] == 0
      redirect_to root_url, :notice => 'You do not have permission to view that!'
    end
  end
  def authenticate_user!
      if session[:user_id]

      else
        redirect_to '/login', :notice => 'Please login first.'
        ## if you want render 404 page
        ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
      end
    end
end
