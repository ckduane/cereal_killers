Rails.application.routes.draw do
  root 'users#index'

  resources :products do
  	resources :reviews
  	resources :uploads, only: [:create, :new]
    resources :photos, only: [:create, :new]
  end

  devise_for :users, controllers: {
  	sessions: 'users/sessions'
	} 
	
	get '/users/:id' => 'users#show', as: :user

  get '/404', to: "errors#not_found"
  get '/422', to: "errors#unacceptable"
  get '/500', to: "errors#internal_error"

end
