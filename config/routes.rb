Rails.application.routes.draw do
  get 'welcome_page/index'
  resources :animal_losts
  resources :animal_founds
  devise_for :users
  root 'welcome_page#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
