module Api
  module V1
    class UsersController < BaseController
      def show
        user = current_user
        json_string = UserSerializer.new(user).serializable_hash.to_json
        render json: json_string
      end

      def update
        user = current_user
        if user.update(user_params)
          json_string = UserSerializer.new(user).serializable_hash.to_json
          render json: json_string
        else
          render render_400(nil, user.errors.full_messages)
        end
      end

      def like
        user = current_user
        like_lists = user.like_game_lists
        json_string = GameListSerializer.new(like_lists).serializable_hash.to_json
        render json: json_string
      end

      private

      def user_params
        params.require(:user).permit(:nickname, :email, :avatar, :avatar_cashe)
      end
    end
  end
end
