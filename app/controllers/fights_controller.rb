class FightsController < ApplicationController
  # This index method generates a random star wars and pokemon character
  # Using custom class methods
  def index
    @star_war = StarWar.generate rand(90)
    @pokemon = Pokemon.generate rand(150)
  end
end
  