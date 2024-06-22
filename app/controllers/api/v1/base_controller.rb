module Api
  module V1
    class BaseController < ApplicationController
      include Api::ExceptionHandler
      include ActionController::HttpAuthentication::Token::ControllerMethods

      before_action :authenticate

      protected

      def authenticate
        authenticate_or_request_with_http_token do |token, _options|
          @_current_user ||= ApiKey.active.find_by(access_token: token)&.user
        end
      end

      def current_user
        @_current_user
      end

      def set_access_token!(user)
        api_key = user.activate_api_key!
        response.headers['AccessToken'] = api_key.access_token
      end

      def delete_access_token!(user)
        api_key = current_user.api_keys.active.first
        api_key.delete
      end

      private

      def form_authenticity_token; end
    end
  end
end
