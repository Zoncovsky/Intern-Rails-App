Rails.application.routes.draw do
  devise_for :users
  resources :menus
  resources :shops, only:[:index, :show]
  resources :order_items
  resource :cards, only:[:show]
  
  get 'home/staff'
  root 'shop#index'
end
