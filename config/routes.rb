Rails.application.routes.draw do

  root 'user#new'
  get '/new', to: 'user#new'
  get '/test', to: 'user#test'
  post '/', to: 'user#create'
  get '/show/:username', to: 'user#show'


end
