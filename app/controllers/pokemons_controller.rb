class PokemonsController < ApplicationController
  # Index action is used to show the list of the most wins
  def index
    @pokemon = Pokemon.order(wins: :desc)
  end

  # Update action is used to update the number of wins for the model
  def update
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update!(wins: @pokemon.wins + 1)
    redirect_to fights_path
  end
end
