Rails.application.routes.draw do
  
  root 'users#new'
  resources :users, only: [:new, :create] 
  resources :home, only: [:new]

  #get '/users/create', to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
