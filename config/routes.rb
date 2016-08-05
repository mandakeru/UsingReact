Rails.application.routes.draw do
  resources :products
  
  get 'product/new' => 'product#new'
  get 'product/estoque' => 'products#estoque'
  
  root 'products#index'
end
