Rails.application.routes.draw do

get 'pages/index'

devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#index'

  get 'aboutUs' => 'homepage#aboutUs', as: 'AboutUs'

  get 'product' => 'product#display', as: 'display'

end
