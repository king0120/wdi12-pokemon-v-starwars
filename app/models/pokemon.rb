class Pokemon < ApplicationRecord

  # Imports all methods from HTTParty
  include HTTParty
  # Sets the default url for all requests made in this class
  base_uri 'http://pokeapi.co/api/v2/pokemon'

  def self.generate(api_id)
    # Search for an existing item in the database and
    # return that if it exists
    pokemon = find_by(api_id: api_id)
    return pokemon unless pokemon.nil?

    # If nothing is found in the database
    # get info from third party api
    response = get("/#{api_id}")
    
    # Fetch info from the response hash and create
    # a new row in our database using ActiveRecord's
    # create method
    create!(name: response['name'],
            image: response['sprites']['front_default'],
            wins: 0,
            api_id: api_id
    )
  end
end
