Rails.application.routes.draw do
  root 'products#index'

  resources :products do
  	resources :reviews
  end

  devise_for :users, controllers: {
  	sessions: 'users/sessions'
	} 
	
	get '/users/:id' => 'users#show', as: :user

end
