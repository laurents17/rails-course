Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    get '/courses/new' => 'courses#new'
    post '/courses' => 'courses#create'
    get '/courses/edit' => 'courses#edit'
    get '/courses' => 'courses#index'
    post '/courses/update' => 'courses#update'
    get '/courses/delete' => 'courses#delete'
    get '/courses/details' => 'courses#details'
    
    get '/students' => 'students#index'
    get '/students/details' => 'students#details'
    get '/students/new' => 'students#new'
    post '/students' => 'students#create'
    get '/students/edit' => 'students#edit'
    post 'students/update' => 'students#update'
    get 'students/delete' => 'students#delete'
    
end
