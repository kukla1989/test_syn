Rails.application.routes.draw do
  resources :articles
  devise_for :users
	root to: 'words#index'
	resources :words do
		post 'rate', to: 'words#rate'
	end
end
