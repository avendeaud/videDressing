Rails.application.routes.draw do
  resources :ads
  resources :users, except: :new
  root to: "ads#index"


   get '/signup' => 'users#new', as: :new_user
   
   get '/login' => 'sessions#new', as: :new_session

  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy', as: :destroy_session
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
