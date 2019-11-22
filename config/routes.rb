Rails.application.routes.draw do
  get 'welcome_page/index'
  resources :found_animals
  resources :lost_animals
  resources :users

  root 'welcome_page#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
