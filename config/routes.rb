Rails.application.routes.draw do
  resources :photos do
    post '/guess', to: 'photos#guess'
    patch '/games', to: 'games#setUser'
    get '/games', to: 'games#highScores'
  end
  root to: 'static_pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
