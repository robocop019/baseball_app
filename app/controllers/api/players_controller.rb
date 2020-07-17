class Api::PlayersController < ApplicationController
  def index
    team = params[:team_id]

    @players = Player.where(team_id: team).order(:number)

    render 'index.json.jbuilder'
  end

  def show
    @player = Player.find(params[:id])

    render 'show.json.jbuilder'
  end
end
