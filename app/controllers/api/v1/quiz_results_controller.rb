module Api
  module V1
    class QuizResultsController  < BaseController
      skip_before_action :authenticate, only: %i[show create]

      def show
        if access_token_present?
          authenticate
          quiz_results = QuizResult.where(user_id: current_user).last(5)
          render json: quiz_results
        else
          render json: []
        end
      end

      def create
        if access_token_present?
          authenticate
          user = current_user
          quiz_results = quiz_results_params
          quiz_results.each do |param|
            QuizResult.create(user_id: user.id, quiz_id: param[:quiz_id], select_answer: param[:select_answer])
          end

          render json: { message: "Quiz results saved successfully" }, status: :created
        else
          session[:quiz_results] ||= []
          session[:quiz_results] << quiz_results_params

          render json: session[:quiz_results]
        end
      end

      private

      def quiz_results_params
        params.require(:quiz_result).map do |result|
          result.permit(:quiz_id, :select_answer)
        end
      end
    end
  end
end
