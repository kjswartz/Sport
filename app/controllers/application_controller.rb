class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :current_user
  before_action :view_tables

  def view_tables
    @teams = Team.all
    @leagues = League.all
    @users = User.all
  end

  def current_user
    @current_user = User.find_by(email: "guest@guest.com")
  end

  helper_method :signed_in?

  def signed_in?
    return true if @current_user
  end

end
