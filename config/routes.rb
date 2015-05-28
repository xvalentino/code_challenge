Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  post '/items/:id', to: 'orders#one_click'
  get '/wishlist', to: 'items#wishlist'
  post '/wishlist/:id', to: 'items#add_to_wishlist'
end
