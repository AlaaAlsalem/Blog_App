Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'posts/posts'
  get 'home/home'
  root 'home#home'

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
