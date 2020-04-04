Rails.application.routes.draw do
  resources :experiences
  resources :hotels
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users

  resources :trips do
    resources :destinations
  end

  get '/destinations/:id' => "destinations#show", as: 'destination'

  resources :sessions

  root 'sessions#new'

  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
