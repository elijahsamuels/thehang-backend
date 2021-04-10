Rails.application.routes.draw do
  get 'primary_instruments/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users #, only: [:index, :create, :update]

end
