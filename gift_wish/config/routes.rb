Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :products
  resources :users

  root "pages#homepage"

  get "/products/:product_id/add", to: "products#addProductToUser"
end
