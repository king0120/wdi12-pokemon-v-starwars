# Bash Commands run while setting up this app. 

```bash

  rails new pokemon_vs_starwars -d postgresql
  # after adding HTTParty to gemfile
  bundle install

  # Create main view controller and add a index action and html.erb
  rails g controller Fights index

  # Create models
  rails g model Pokemon name image wins:integer
  rails g model StarWar name image wins:integer

  rails db:create
  rails db:migrate

  # Create migration to add api_id to each table
  rails g migration AddApiIdToStarWars api_id:integer
  rails g migration AddApiIdToPokemons api_id:integer

  # Devise
  # after adding devise gem to gemfile

  bundle install

  # Use rails generator to start devise install
  rails g devise:install
  # Create a user model with devise
  rails g devise User
  rails db:migrate 


  # Misc
  # Add controllers for update action and index page
  rails g controller StarWars index update
  rails g controller Pokemons index update

```
