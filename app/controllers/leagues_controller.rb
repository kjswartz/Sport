class LeaguesController < ApplicationController
  before_action :set_league, only: [:show, :edit, :update, :destroy]
  before_action :view_tables, only: [:new, :create, :index, :show, :edit, :update]

  def index
    @leagues = League.all
  end

  def new
    @league = League.new
  end

  def edit
  end

  def show
  end

  def create
    @league = League.new(league_params)

    respond_to do |format|
      if @league.save
        format.html { redirect_to @league, notice: 'League was successfully created.' }
        format.json { render :show, status: :created, location: @league }
      else
        format.html { render :new }
        format.json { render json: @player.leagues, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @league.update(league_params)
        format.html { redirect_to @league, notice: 'League was successfully updated.' }
        format.json { render :show, status: :ok, location: @league }
      else
        format.html { render :edit }
        format.json { render json: @league.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @league.destroy
    respond_to do |format|
      format.html { redirect_to leagues_url, notice: 'league was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_league
      @league = League.find(params[:id])
    end

    def view_tables
      @teams = Team.all
      @leagues = League.all
      @players = Player.all
    end

    def league_params
      params.require(:league).permit(:name, :skill)
    end
end
