module Api
  module V1
    class UserSessionsController  < ApplicationController

      def create
        user = login(params[:email], params[:password])
        if user
          json_string = UserSerializer.new(user).serializable_hash.to_json
          render json: json_string
        else
          render json: { message: "Invalid email or password" }, status: :unprocessable_entity
        end
      end

      def destroy
        logout
        render json: { message: "Logout!" }
      end

      private

      def form_authenticity_token; end
    end
  end
end
