Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home', to:"root#home"
  get 'res', to:"root#api"
  get 'user/:id/:name', to:"root#user"
  post '/add', to:"root#add"
  delete '/delete/:id', to: "root#delete"
  get "/search", to: "root#search"
  get "/update/:id", to: "root#update"
  post "/updatedform", to: "root#updatedform"

  resources :user
  resources :sessions

  get 'signup', to: "users#new", as: "signup"
  post "/register", to: "users#create", as: "register"

end
