module Api
  module V1
    class GameListsController  < BaseController
      skip_before_action :authenticate, only: %i[index show quiz_lists typing_lists]

      def index
        game_list = GameList.all
        json_string = GameListSerializer.new(game_list).serializable_hash.to_json
        render json: json_string
      end

      def show
        game_list = GameList.find_by(id: params[:id])
        json_string = GameListSerializer.new(game_list).serializable_hash.to_json
        render json: json_string
      end

      def quiz_lists
        game_lists = GameList.where(game_type: 0).order(game_type: :asc, title: :asc)
        json_string = GameListSerializer.new(game_lists).serializable_hash.to_json
        render json: json_string
      end

      def typing_lists
        game_lists = GameList.where(game_type: 1).order(game_type: :asc, title: :asc)
        json_string = GameListSerializer.new(game_lists).serializable_hash.to_json
        render json: json_string
      end
    end
  end
end
