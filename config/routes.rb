Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "posts#index"
  root "application#index"

  get "/books", to: "books#index"
  get "/books/new", to: "books#new", as: "new_book"
  post "/books", to: "books#create"
  get "/books/:id", to: "books#show", as: "book"
  resources :authors, only: [:index, :show, :new, :create, :edit, :update]
end
