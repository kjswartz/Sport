class WelcomeController < ApplicationController
  def index
    @teams = Team.all
    @leagues = League.all
    @players = Player.all
  end
end
