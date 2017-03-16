Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "home#index"

 resource :contacts, only: [:new, :create], path_names: { :new => '' }
end
