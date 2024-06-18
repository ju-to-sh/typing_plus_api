Rails.application.routes.draw do
  namespace :api, format: 'json' do
    namespace :v1 do
      resource :user, only: %i[show]
      get 'login' => 'user_sessions#new', :as => :login
      post 'login' => "user_sessions#create"
      post 'logout' => 'user_sessions#destroy', :as => :logout
      resource :registration, only: %i[create]
    end
  end
end
