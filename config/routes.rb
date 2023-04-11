Rails.application.routes.draw do
  get 'search_analytics/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :search_analytics, only: [:index]

  # Defines the root path route ("/")
  # root "articles#index"
end
