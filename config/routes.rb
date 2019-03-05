Rails.application.routes.draw do
  devise_for :admins

  root controller: :menu, action: :index
  
  resources :menu, only: [:index]
end
