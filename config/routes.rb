RitlyApp::Application.routes.draw do
  
  root to: 'site#index'

  get '/links', to: 'links#index', as: :links

  get '/links/new', to: 'links#new', as: :new_link

  post '/links', to: 'links#create'

  get '/links/:id', to: 'links#show', as: :link

  get 'links/:id/delete', to: 'links#delete'

  get '/go/:code/preview', to: 'links#preview', as: :preview

  get '/go/:code', to: 'links#go', as: :go

end
