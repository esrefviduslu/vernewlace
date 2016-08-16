Rails.application.routes.draw do
  	
  	devise_for :owners
 	devise_for :customers
 	
	root  'places#index'
	
	resources :places do
    resources :comments, only: [:create, :destroy]
    resources :reservations, only: [:create, :destroy]
  	end
  	
	resources :categories, only: [:show, :index]
	#get 'places/new', to: 'places#new'
	#get 'places', to: 'places#index'
	#get 'places/:id', to: 'places#show', as:"place"
	#post 'places', to: 'places#create'
end
