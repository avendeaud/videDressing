Rails.application.routes.draw do
  resources :ads
  
  root to: "ads#index"

  get '/users/edit' => 'users#edit', as: :edit_user



  get '/users/update' => 'users#update'

  get '/users/destroy' => 'users#destroy'

  resources :users, except: [:new, :index, :edit, :update, :destroy]

   get '/signup' => 'users#new', as: :new_user
   
   get '/login' => 'sessions#new', as: :new_session

  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy', as: :destroy_session
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
