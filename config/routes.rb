Rails.application.routes.draw do
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :users, only: %i[index]
      get 'login' => 'user_sessions#new', :as => :login
      post 'login' => "user_sessions#create"
      post 'logout' => 'user_sessions#destroy', :as => :logout
    end
  end
end
