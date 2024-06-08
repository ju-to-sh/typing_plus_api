module Api
  module V1
    class UsersController < ApplicationController
      def index
        users = User.all
        json_string = UserSerializer.new(users).serializable_hash.to_json
        render json: json_string
      end
    end
  end
end
