Rails.application.routes.draw do

  get 'pages/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#index'

  get 'about_us' => 'pages#about_us', as: 'about'

  get 'product' => 'product#display', as: 'display'

end
