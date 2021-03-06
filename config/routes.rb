Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale

#paginas estaticas
get 'pages/index'


get 'lost' => 'lost#index'
get 'lost/new'

get 'found/new'

get 'communities/index'

root to: "pages#index"

namespace :api do
  namespace :v1 do
    resources :pets
  end
end

end
