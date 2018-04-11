Rails.application.routes.draw do
  resources :photos
  root to: 'static_pages#home'

  post '/guess', to: 'photos#guess'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
