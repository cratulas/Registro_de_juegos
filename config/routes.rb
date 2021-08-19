Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  devise_for :admins
  root to: "games#index"

  # authenticate :admin do

  # end
  resources :games
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
