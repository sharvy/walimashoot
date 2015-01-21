Rails.application.routes.draw do

  post 'pin_post/:id', to: 'pins#pin_post', as: 'pin_post'
  resources :boards
  resources :pins
  devise_for :users

  root 'pins#index'

end
