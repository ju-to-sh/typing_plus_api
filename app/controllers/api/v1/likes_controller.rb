module Api
  module V1
    class LikesController < BaseController
      def create
        game_list = GameList.find(params[:id])
        current_user.like(game_list)
      end

      def destroy
        game_list = current_user.like_game_lists.find(params[:id])
        current_user.unlike(game_list)
      end
    end
  end
end
