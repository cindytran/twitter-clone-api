Rails.application.routes.draw do
  get 'tweets', to: 'tweets#index'
  root 'test#index'

  namespace :api do
    namespace :v1 do
      resources :tweets
    end
  end
end
