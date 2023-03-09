Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :universes, only: %i[index show]
  resources :characters, only: %i[show] do
    resources :adventures, only: %i[new create]
  end
  resources :adventures, only: %i[index show update] do
    resources :messages, only: %i[create]
  end
  resources :user, only: %i[show]
end
