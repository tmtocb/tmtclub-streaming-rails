Rails.application.routes.draw do
  resources :tabs, only: [:show]
end
