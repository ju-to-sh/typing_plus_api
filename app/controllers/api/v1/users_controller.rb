module Api
  module V1
    class UsersController < BaseController

      def show
        user = current_user
        json_string = UserSerializer.new(user).serializable_hash.to_json
        render json: json_string
      end
    end
  end
end
