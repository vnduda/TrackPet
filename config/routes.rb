Rails.application.routes.draw do
  resources :animal_encontrados
  resources :animal_perdidos
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
