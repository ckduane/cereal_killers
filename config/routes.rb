Rails.application.routes.draw do
  get 'home/index'

  resources :reviews

  root 'home#index'

end
