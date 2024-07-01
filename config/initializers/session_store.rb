# config/initializers/session_store.rb
Rails.application.config.session_store :cookie_store, key: 'quiz_results', expire_after: 1.hour
