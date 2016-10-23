Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#paginas estaticas
get 'pages/index'

get 'lost/new'

root to: "pages#index"
 
end
