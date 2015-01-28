Rails.application.routes.draw do


  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], as: :finish_signup
  post 'pin_post/:id', to: 'pins#pin_post', as: 'pin_post'
  resources :boards
  resources :pins
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  root 'pins#index'

end
