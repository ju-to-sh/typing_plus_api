module Api
  module V1
    class GameListsController  < BaseController
      skip_before_action :authenticate

      def index
        q = GameList.ransack(search_params)
        game_list = q.result(distinct: true)
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

      def likes
        if current_user
          like_lists = current_user.like_game_lists.order(created_at: :desc)
          json_string = GameListSerializer.new(like_lists).serializable_hash.to_json
          render json: json_string
        else
          render json: []
        end
      end

      private

      def search_params
        params.require(:q).permit(:title_cont, :category_eq, :level_eq)
      end
    end
  end
end
