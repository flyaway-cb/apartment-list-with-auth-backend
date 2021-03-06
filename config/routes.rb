Rails.application.routes.draw do
  get "admin" => "admin#index"
  put "admin/:id" => "admin#update"
  patch "admin/:id" => "admin#update"
  root "grades#index"
  resources :grades, defaults:{format: :json}
  resources :users, defaults: {format: :json}
  post 'user_token' => 'user_token#create'
  resources :apartments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
