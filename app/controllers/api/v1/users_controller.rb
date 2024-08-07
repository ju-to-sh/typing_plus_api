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

      def study_records
        user = current_user
        typing_results = user.typing_game_results.order(created_at: :desc)
        quiz_results = user.quiz_results
        data = {
          typing: TypingGameResultSerializer.new(typing_results).serializable_hash[:data],
          quiz: QuizResultSerializer.new(quiz_results).serializable_hash[:data]
        }
        render json: data
      end

      private

      def user_params
        params.require(:user).permit(:nickname, :email, :avatar, :avatar_cashe)
      end
    end
  end
end
