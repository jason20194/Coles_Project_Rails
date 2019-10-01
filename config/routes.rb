Rails.application.routes.draw do
  resources :collections do 
  resources :categories
  resources :recipes
  end
  resources :categories do
    resources :recipes
  end
  resources :recipes do
    resources :categories
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
