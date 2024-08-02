module Api
  module V1
    class QuizzesController < BaseController
      skip_before_action :authenticate, only: %i[show]

      def show
        quizzes = Quiz.where(game_list_id: params[:id])
        json_string = QuizSerializer.new(quizzes).serializable_hash.to_json
        render json: json_string
      end

      private

      def quiz_params
        params.require(:quiz).permit(:content)
      end
    end
  end
end
