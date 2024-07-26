module Api
  module V1
    class RankingListsController < BaseController
      skip_before_action :authenticate, only: %i[index]

      def index
        score_list = TypingGameResult.unique_by_highest_score
        ranking_list = score_list.sort_by { |result| -result.score }
        json_string = TypingGameResultSerializer.new(ranking_list, options).serializable_hash.to_json
        render json: json_string
      end

      private

      def options
        options = {}
        options[:include] = [:user]
        options
      end
    end
  end
end
