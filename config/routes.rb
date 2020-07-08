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

  get '/404', to: "errors#not_found"
  get '/422', to: "errors#unacceptable"
  get '/500', to: "errors#internal_error"

end
