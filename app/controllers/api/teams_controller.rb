class Api::TeamsController < ApplicationController
  def index
    @teams = Team.all.order(wins: :desc)

    @teams = Team.where(division: params[:division]).order(wins: :desc) if params[:division]

    render 'index.json.jbuilder'
  end

  def show
    @team = Team.find(params[:id])

    render 'show.json.jbuilder'
  end
end
