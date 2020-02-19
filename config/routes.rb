Rails.application.routes.draw do
  resources :yfcases
  root to: "yfcases#index"
end
