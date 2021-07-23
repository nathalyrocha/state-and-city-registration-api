Rails.application.routes.draw do
  namespace :v1, defaults: { format: :json } do
    resources :states, only: %i[index create]
    resources :cities, only: %i[index create]
  end
end
