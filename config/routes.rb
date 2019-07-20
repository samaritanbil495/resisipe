Rails.application.routes.draw do
  get 'andusers/index'

  get 'andusers/show'

  get 'andusers/new'

  get 'andusers/edit'

  root 'home#index'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
 

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  get 'home/index'

Rails.application.routes.draw do
  get 'andusers/index'

  get 'andusers/show'

  get 'andusers/new'

  get 'andusers/edit'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  get 'home/index'

  root 'home#index'
end

  get 'andrecipes/index'

  get 'andrecipes/show'

  post 'andrecipes/new'

  get 'andrecipes/edit'

	resources :recipes do
    		resources :likes
  	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



