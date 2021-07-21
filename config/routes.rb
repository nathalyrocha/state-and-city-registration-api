Rails.application.routes.draw do
  resources :states, only: %i[index create]
  resources :cities, only: %i[index create]
end
