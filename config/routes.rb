require "resque_web"

Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ResqueWeb::Engine => "/resque_web"
end
