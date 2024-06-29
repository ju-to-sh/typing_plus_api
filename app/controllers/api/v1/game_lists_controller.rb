module Api
  module V1
    class GameListsController  < BaseController
      skip_before_action :authenticate, only: %i[index show]

      def index
        game_lists = GameList.order(game_type: :asc, title: :asc)
        json_string = GameListSerializer.new(game_lists).serializable_hash.to_json
        render json: json_string
      end

      def show
        game_list = GameList.find_by(id: params[:id])
        json_string = GameListSerializer.new(game_list).serializable_hash.to_json
        render json: json_string
      end
    end
  end
end
