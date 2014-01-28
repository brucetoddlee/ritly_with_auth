RitlyApp::Application.routes.draw do
  
  get "sessions/new"
  get "sessions/destroy"
  get "users/new"
  get "users/show"
  get "users/create"
  root to: 'site#index'

  resources :users, :sessions

  get '/signup' => 'users#new'
  delete '/signout', to: 'sessions#destroy'
  get'/signin' => 'sessions#new'

  get '/links', to: 'links#index', as: :links

  get '/links/new', to: 'links#new', as: :new_link

  post '/links', to: 'links#create'

  get '/links/:id', to: 'links#show', as: :link

  get 'links/:id/delete', to: 'links#delete'

  get '/go/:code/preview', to: 'links#preview', as: :preview

  get '/go/:code', to: 'links#go', as: :go

end
