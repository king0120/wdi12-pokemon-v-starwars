class StarWar < ApplicationRecord
  # Imports all methods from HTTParty
  include HTTParty
  # Sets the default url for all requests made in this class
  base_uri 'http://swapi.co/api/people'

  def self.generate(api_id)
    # Search for an existing item in the database and
    # return that if it exists
    star_war = find_by(api_id: api_id)
    return star_war unless star_war.nil?

    # If nothing is found in the database
    # get info from third party api
    response = get("/#{api_id}")
    # This specific api doesn't have images, so I am just
    # adding a default one here
    placeholder_image = "https://www.placecage.com/c/#{200 + api_id}/#{200 + api_id}"    
    

    # Fetch info from the response hash and create
    # a new row in our database using ActiveRecord's
    # create method
    create!(name: response['name'],
            image: placeholder_image,
            wins: 0,
            api_id: api_id
    )
  end
end
