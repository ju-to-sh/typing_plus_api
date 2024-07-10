module Api
  module V1
    class TypingGameResultsController  < BaseController
      skip_before_action :authenticate, only: %i[create]

      def create
        if access_token_present?
          authenticate
          user = current_user
          typing_result = TypingGameResult.new(typing_results_params)
          typing_result.user_id = user.id

          if typing_result.save
            render json: { message: "typing results saved successfully" }, status: :created
          else
            render render_400(nil, typing_result.errors.full_messages)
          end
        else
          session[:typing_game_results] ||= []
          session[:typing_game_results] << typing_results_params

          render json: session[:typing_game_results]
        end
      end

      private

      def typing_results_params
        params.require(:typing_game_result).permit(:type_speed, :miss_type, :score, :game_list_id)
      end
    end
  end
end
