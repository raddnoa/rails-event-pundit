Rails.application.routes.draw do
  # devise_for :users
  namespace :api do
    namespace :v1 do
      devise_for :users, controllers: {
        sessions: 'api/v1/users/sessions'
      }
      resources :users, only: [:index]
    end
  end
end
