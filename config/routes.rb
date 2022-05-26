Rails.application.routes.draw do
  get 'users/index'
  devise_for :admins, controllers: {
    registrations: 'registrations'
  }
  devise_for :sellers, controllers: {
    registrations: 'registrations'
  }
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  resources :menus
  resources :shops, only:[:index, :show]
  resources :order_items
  resource :cards, only:[:show]
  
  get 'sellers/index'
  get 'sellers/show'
  get 'home/staff'
  root 'shop#index'
end
