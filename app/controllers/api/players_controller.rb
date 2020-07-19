class Api::PlayersController < ApplicationController
  def index
    team = params[:team_id]
    pitcher = params[:pitcher]

    @players = Player.where(team_id: team).order(:number)

    @players = Player.where(team_id: team).where('appearances > ?', 0).order(appearances: :desc) if pitcher == 'true'

    render 'index.json.jbuilder'
  end

  def show
    @player = Player.find(params[:id])

    render 'show.json.jbuilder'
  end
end
