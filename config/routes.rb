TSLAlumni::Application.routes.draw do

  root 'users#index'

  get '/session/new', controller: 'sessions', action: 'new', as: 'new_session'
  post '/session', controller: 'sessions', action: 'create', as: 'session'
  delete '/session', controller: 'sessions', action: 'destroy'

  resources :users

end