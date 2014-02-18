MoviesApp::Application.routes.draw do

  # Home page
  root "movies#index"

  # Movie resource
  get "/movies/new" => 'movies#new', :as => :new_movie
  post "/movies" => 'movies#create', :as => :movies

  get "/movies" => 'movies#index'
  get "/movies/:movie_id" => 'movies#show', :as => :movie

  get "/movies/:movie_id/edit" => 'movies#edit', :as => :edit_movie
  patch "/movies/:movie_id" => 'movies#update'

  delete "/movies/:movie_id" => 'movies#destroy'

  # Director resource
  get "/directors/new" => 'directors#new', :as => :new_director
  post "/directors" => 'directors#create', :as => :directors

  get "/directors" => 'directors#index'
  get "/directors/:director_id" => 'directors#show', :as => :director

  get "/directors/:director_id/edit" => 'directors#edit', :as => :edit_director
  patch "/directors/:director_id" => 'directors#update'

  delete "/directors/:director_id" => 'directors#destroy'



end
