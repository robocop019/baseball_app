class Api::TeamsController < ApplicationController
  def index
    @teams = Team.all.order(:name)

    render 'index.json.jbuilder'
  end

  def show
    @team = Team.find(params[:id])

    render 'show.json.jbuilder'
  end
end
