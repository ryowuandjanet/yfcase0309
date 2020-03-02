Rails.application.routes.draw do
  devise_for :users
  resources :yfcases
  root to: "yfcases#index"
end
