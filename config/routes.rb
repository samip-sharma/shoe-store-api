Rails.application.routes.draw do
  resources :user_shoes
  resources :shoe_sizes
  resources :shoes
  resources :users
  post "/getToken", to: "users#getToken"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
