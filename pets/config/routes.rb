Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    get '/' => 'pets#index'
    #pets routes
    get '/pets' => 'pets#index'
    get '/pets/show' => 'pets#show'
    get '/pets/new' => 'pets#new'
    post '/pets' => 'pets#create'
    get '/pets/edit' => 'pets#edit'
    post '/pets/edit'=> 'pets#update'
    get '/pets/delete' => 'pets#delete'
    
    #owners routes
    get '/owners' => 'owners#index'
    get '/owners/show' => 'owners#show'    
    get '/owners/new' => 'owners#new'
    post '/owners' => 'owners#create'
    get '/owners/edit' => 'owners#edit'
    post '/owners/edit'=> 'owners#update'
    get '/owners/delete' => 'owners#delete'
end
