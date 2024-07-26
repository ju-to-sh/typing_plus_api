Rails.application.routes.draw do
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :users, only: %i[show update]
      get 'login' => 'user_sessions#new', :as => :login
      post 'login' => "user_sessions#create"
      post 'logout' => 'user_sessions#destroy', :as => :logout
      resource :registration, only: %i[create]
      resources :game_lists, only: %i[show]
      get 'search' => 'game_lists#index'
      get 'quizzes' => 'game_lists#quiz_lists'
      get 'typing_games' => 'game_lists#typing_lists'
      resources :quizzes, only: %i[show]
      resources :typing_games, only: %i[show]
      resources :quiz_results, only: %i[show create]
      resources :typing_game_results, only: %i[create]
      get 'ranking' => 'ranking_lists#index'
    end
  end
end
