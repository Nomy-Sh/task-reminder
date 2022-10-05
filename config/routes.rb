
Rails.application.routes.draw do
  get 'home/calendar'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
  #get '/books' 
  #get_ycs '/users/:status' => 'users#index', foo: 'bar'

end
