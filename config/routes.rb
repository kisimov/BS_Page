Rails.application.routes.draw do

devise_for :users
root to: "home#index"

get 'home/index'
 

get 'about' => 'pages#about'

 resource :contacts, only: [:new, :create], path_names: { :new => '' }
end
