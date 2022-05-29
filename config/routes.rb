Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  devise_for :sellers
  resources :menus
  resources :shops, only:[:index, :show]
  resources :order_items
  resource :cards, only:[:show]
  get 'users/index'
  get 'sellers/index'
  get 'sellers/show'
  get 'home/staff'
  root 'shop#index'
end
