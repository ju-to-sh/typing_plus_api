module Api
  module V1
    class UserSessionsController  < ApplicationController

      def create
        @user = login(params[:email], params[:password])

        if @user
          render json: @user
        else
          render "hello", status: :unprocessable_entity
        end
      end

      def destroy
        logout
        # redirect_to(:users, notice: 'Logged out!')
      end

      private

      # def user_params
      #   params.requre(:user).permit(:email, :password)
      # end
      # https://github.com/NoamB/sorcery/issues/724
      # https://qiita.com/okaeri_ryoma/items/0d01469f2265e5d51af1
      def form_authenticity_token; end
    end
  end
end
