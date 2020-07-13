Rails.application.routes.draw do
  namespace :api do
    get '/players' => 'players#index'
    post '/players' => 'players#create'
    get '/players/:id' => 'players#show'
    patch '/players/:id' => 'players#update'
    delete '/players/:id' => 'players#destroy'

    get '/teams' => 'teams#index'
    post '/teams' => 'teams#create'
    get '/teams/:id' => 'teams#show'
    patch '/teams/:id' => 'teams#update'
    delete '/teams/:id' => 'teams#destroy'

  end
end
