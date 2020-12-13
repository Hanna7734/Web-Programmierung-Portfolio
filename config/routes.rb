Rails.application.routes.draw do
  resources :spenden_weihnachtsmarkts
  devise_for :users
  resources :artikels
  
  get 'users/sign_up'
  get 'home/spenden'
  get 'home/index'
  get 'home/about'
  root 'home#index'
  #root 'artikels#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end