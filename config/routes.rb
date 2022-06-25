Rails.application.routes.draw do
  root :to => "pessoas#index"

  resources :pessoas
end
