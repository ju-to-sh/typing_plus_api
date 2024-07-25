module Api
  module V1
    class RankingListsController < BaseController
      skip_before_action :authenticate, only: %i[index]

      def index
        ranking_list = TypingGameResult.includes(:user).all
        json_string = TypingGameResultSerializer.new(ranking_list).serializable_hash.to_json
        render json: json_string
      end
    end
  end
end
