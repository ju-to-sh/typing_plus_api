# frozen_string_literal: true

module Api
  module V1
    class RegistrationsController < BaseController
      def create
        @user = User.new(user_params)

        if @user.save
          json_string = UserSerializer.new(@user).serializable_hash.to_json
          render json: json_string
        else
          render_400(nil, @user.errors.full_messages)
        end
      end

      private

      def user_params
        params.except(:format).permit(:nickname, :email, :password)
      end
    end
  end
end
