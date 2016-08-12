Rails.application.routes.draw do
	root  'places#index'
	get 'places/new', to: 'places#new'
	get 'places', to: 'places#index'
	get 'places/:id', to: 'places#show', as:"place"
	post 'places', to: 'places#create'
end
