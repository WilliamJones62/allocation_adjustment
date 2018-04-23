Rails.application.routes.draw do
  resources :allocations, only: [:new, :create, :show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'allocations#index'
end
