Rails.application.routes.draw do
  root to: "tasks#index"
    resources :tasks do
      resources :review,only: [:index,:create]
    end
end
