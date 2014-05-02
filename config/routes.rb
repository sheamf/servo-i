Servo::Application.routes.draw do

  resources :owners do
    resources :stations, only: [:new, :create]
  end
  resources :stations, only: [:index, :show, :update, :edit]
  resources :station_locations

  get '/how_it_works',  to: 'static_pages#how_it_works'

  get 'select_owner', to: 'owners#select_owner'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
   root 'welcome#index'

end
