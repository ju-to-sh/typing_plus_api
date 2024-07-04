module Api
  module V1
    class TypingGamesController  < BaseController
      skip_before_action :authenticate, only: %i[show]

      def show
        typing_questions = TypingGame.where(game_list_id: params[:id])
        json_string = TypingGameSerializer.new(typing_questions).serializable_hash.to_json
        render json: json_string
      end
    end
  end
end
