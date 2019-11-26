Rails.application.routes.draw do
  root to: 'welcome_page#index'
  resources :animal_losts
  resources :animal_founds
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
