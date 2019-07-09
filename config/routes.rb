Rails.application.routes.draw do
  root 'test#index'

  namespace :api do
    namespace :v1 do
      resources :tweets
    end
  end
end
