Rails.application.routes.draw do
  root :to => 'gymplans#index'
  resources :gymplans
  resources :exercises
  resources :supplements
end
