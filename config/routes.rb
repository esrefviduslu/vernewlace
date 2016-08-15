Rails.application.routes.draw do
 	devise_for :customers
 	
	root  'places#index'
	resources :places
	resources :categories, only: [:show, :index]
  	resources :comments, only: [:create]
	#get 'places/new', to: 'places#new'
	#get 'places', to: 'places#index'
	#get 'places/:id', to: 'places#show', as:"place"
	#post 'places', to: 'places#create'
end
