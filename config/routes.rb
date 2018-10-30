Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'user#new'
  #post '/create', to: 'user#create', as: 'user_creation' #Pour vérifier les deux premiers formualires décommenter cette ligne
  post '/', to: 'user#create', as: 'user_creation' #Pour vérifier le derneir formualire décommenter cette ligne
end
