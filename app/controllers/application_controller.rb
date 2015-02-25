class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :view_tables

  def view_tables
    @teams = Team.all
    @leagues = League.all
    @players = Player.all
  end

end
