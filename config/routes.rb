Rails.application.routes.draw do
    get '/users/login' , to: 'users#login'
    get '/users/register' , to: 'users#register'
    get '/users/view' , to: 'users#view'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
