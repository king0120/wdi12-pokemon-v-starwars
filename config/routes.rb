Rails.application.routes.draw do
  devise_for :users
  root "fights#index"
  get '/fights', to: "fights#index", as: 'fights'
  
  get '/starwars', to: "star_wars#index", as: 'star_wars'
  patch '/starwars/:id', to: "star_wars#update", as: 'update_starwar'  

  get '/pokemon', to: "pokemons#index", as: 'pokemons'
  patch '/pokemons/:id', to: "pokemons#update", as: 'update_pokemon'  

end
