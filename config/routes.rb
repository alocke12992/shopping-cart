Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    #API ROUTES SHOULD GO HERE
    resources :products, only: [:index]
    resource :cart, only: [:show]
    resources :order_items, only: [:create, :update, :destroy]
  end

  #Do not place any routes below this one
  get '*other', to: 'static#index'
end
