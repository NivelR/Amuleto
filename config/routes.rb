Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#paginas estaticas
get 'pages/index'

get 'lost/new'

get 'found/new'

get 'communities/index'

root to: "pages#index"
 
end
