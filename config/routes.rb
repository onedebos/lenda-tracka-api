Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'users', to: 'users#index'
      post 'user',  to: 'users#create'
    end
  end
  root to: 'home#index'
end
