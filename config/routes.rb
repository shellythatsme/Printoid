Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#index'

  get 'about_us', to: 'pages#about_us', as: 'about'

  get 'product', to: 'product#display', as: 'display'

  get 'shirts', to: 'pages#shirts', as:'shirts'

  get 'shoes', to: 'pages#shoes', as: 'shoes'

  get 'pants', to: 'pages#pants', as: 'pants'

  get 'hats', to: 'pages#hats', as: 'hats'

  get 'other', to: 'pages#other', as: 'other'

  get 'products/:id', to: 'pages#show', as: 'show'

  get 'search', to: 'pages#search', as: 'search'

end
