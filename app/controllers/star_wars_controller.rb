class StarWarsController < ApplicationController
  # Index action is used to show the list of the most wins
  def index
    @star_wars = StarWar.order(wins: :desc)
  end
  
  # Update action is used to update the number of wins for the model
  def update
    @star_war = StarWar.find(params[:id])
    @star_war.update!(wins: @star_war.wins + 1)
    redirect_to fights_path
  end
end
