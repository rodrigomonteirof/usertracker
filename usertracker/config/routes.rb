Rails.application.routes.draw do
  post '/events', to: 'events#create'
  get '/events', to: 'events#index'
  post '/users', to: 'users#create'
end
