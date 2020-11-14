require 'sidekiq/web'

Rails.application.routes.draw do

  resources :bands do
    resources :albums
  end
  devise_for :users
  get 'home/index'
    mount Sidekiq::Web => '/sidekiq'

    root to:  "bands#index"



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
