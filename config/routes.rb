Rails.application.routes.draw do
  resources :apartments
  get 'welcome/index'

  resources :drontests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
