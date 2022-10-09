
Rails.application.routes.draw do
  resources :tasks

  get '/login', to: 'home#login'
  get '/signup', to: 'home#signup'

  root 'home#index'
  get '/calendar', to: 'home#calendar'
  get '/add_new_task', to: 'tasks#new'
  
  post '/login', to: 'home#login'
  get '/logout', to: 'home#logout'
  post '/signup', to: 'home#signup'

end
# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# Defines the root path route ("/")
# root "articles#index"
#get '/books' 
#get '/users/:status' => 'users#index', foo: 'bar'