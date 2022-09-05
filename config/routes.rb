Rails.application.routes.draw do
  resources :users
  resources :line_items do
    patch 'add' => "line_items#add"
    patch 'remove' => 'line_items#remove'
  end
  resources :carts
  root 'store#index', as: 'store_index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
