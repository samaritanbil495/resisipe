Rails.application.routes.draw do
  get 'andrecipes/index'

  get 'andrecipes/show'

  get 'andrecipes/new'

  get 'andrecipes/edit'

	resources :recipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
