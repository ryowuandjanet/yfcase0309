Rails.application.routes.draw do
	devise_for :users
	resources :yfcases do
		resources :objectbuilds do 
			resources :objectplusrates, :controller => "objectbuild_objectplusrates"
			# resources :plusas, :controller => "objectbuild_plusas"
		end
	end
	root to: "yfcases#index"
end
