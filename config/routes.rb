Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'

  resources :products do
  	:reviews
  end

  devise_for :users, controllers: {
  	sessions: 'users/sessions'
	} 
	
	get '/users/:id' => 'users#show', as: :user

end
