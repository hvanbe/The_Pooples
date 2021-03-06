Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :toilets do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :update, :edit, :destroy, :update]
  resources :my_toilets, only: [:index]
end
