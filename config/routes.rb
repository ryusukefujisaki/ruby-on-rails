Rails.application.routes.draw do
  root to: redirect('/bands')

  resources :bands

  get '/framework', to: 'framework#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
