Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
devise_for :users
root to: "home#index"

get 'home/index'
 
get 'about' => 'pages#about'

 resources :articles 

 resource :contacts, only: [:new, :create], path_names: { :new => '' }
  
resources :articles do
	resources :comments
end

end
