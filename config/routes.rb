Rails.application.routes.draw do
  resources :products
  
  get 'product/new' => 'product#new'
  
  root 'products#index'
end
