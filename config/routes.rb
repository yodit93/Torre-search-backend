Rails.application.routes.draw do
  resources :candidates, only: [:index, :show, :create]
end
