Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do 
  	get 'profile', on: :collection
  end
  root to: "users#show"
end
