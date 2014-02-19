MoviesApp::Application.routes.draw do

  # Home page
  root "movies#index"

  # Movie resource
  resources :movies
  resources :directors

end
