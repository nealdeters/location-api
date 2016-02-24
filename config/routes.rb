Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/' => 'locations#index'
      get '/locations' => 'locations#index'
      post '/locations' => 'locations#create'
      get '/locations/:id' => 'locations#show'
      patch '/locations/:id' => 'locations#update'

      delete '/locations/:id' => 'locations#destroy'
    end
  end
end
