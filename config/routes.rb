Rails.application.routes.draw do
  resources :users

  post "/login" => "users#login"
end
