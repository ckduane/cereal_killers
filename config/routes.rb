Rails.application.routes.draw do
  root 'products#index'

  resources :products do
  	resources :reviews
  	resources :uploads
  end

  devise_for :users, controllers: {
  	sessions: 'users/sessions'
	} 
	
	get '/users/:id' => 'users#show', as: :user

end
