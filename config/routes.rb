Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :posts do
      resources :comments
      resources :likes
    end
  end

  root 'pages#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
