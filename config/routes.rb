Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do  
    namespace :v1 do
      get '/' => 'people#index'

      get '/people' => 'people#index'

      post '/people' => 'people#create'

      patch '/people/:id' => 'people#update'

      get '/people/:id' => 'people#show'

      delete '/people/:id' => 'people#destroy'
    end
    
    namespace :v2 do
      get '/' => 'people#index'

      get '/people' => 'people#index'

      post '/people' => 'people#create'

      patch '/people/:id' => 'people#update'

      get '/people/:id' => 'people#show'

      delete '/people/:id' => 'people#destroy'
    end
  end
end
