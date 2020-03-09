Rails.application.routes.draw do
	devise_for :users
	resources :yfcases do
		resources :subsigntrueas, :controller => "yfcase_subsigntruea"
		resources :subsigntruebs, :controller => "yfcase_subsigntrueb"
		resources :subsigntruecs, :controller => "yfcase_subsigntruec"
		resources :objectbuilds do 
			resources :plusrateas, :controller => "objectbuild_plusrateas"
			resources :plusratebs, :controller => "objectbuild_plusratebs"
		end
	end
	root to: "yfcases#index"
end
