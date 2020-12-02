Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/registration', to: 'users#new', as: :registration
  resources :users, only: %i[create]
  get '/dashboard', to: 'dashboard#show'
end
