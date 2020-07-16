class Api::PlayersController < ApplicationController
  def index
    @players = Player.all.order(:name)

    render 'index.json.jbuilder'
  end

  def show
    @player = Player.find(params[:id])

    render 'show.json.jbuilder'
  end
end
