Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "persons#index"
  resources :persons 

  resources :prefectures, only: [:new, :create]
end
