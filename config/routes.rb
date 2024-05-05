Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "posts#index"
  root "application#index"

  resources :books, only: [:index, :show] 
  get "/authors", to: "authors#index", as: "authors"
  get "/authors/new", to: "authors#new", as: "new_author"
  delete "/authors/:id", to: "authors#destroy"
  get "/authors/:id", to: "authors#show", as: "author"
  get "/authors/:id/edit", to: "authors#edit", as: "edit_author"
  post "/authors", to: "authors#create"
  patch "/authors/:id", to: "authors#update"
end
