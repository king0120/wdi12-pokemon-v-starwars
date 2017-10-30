class PokemonsController < ApplicationController
  def index
    @pokemon = Pokemon.order(wins: :desc)
  end

  def update
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update!(wins: @pokemon.wins + 1)
    redirect_to fights_path
  end
end
