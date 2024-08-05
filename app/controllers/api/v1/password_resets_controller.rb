module Api
  module V1
    class PasswordResetsController < BaseController
      skip_before_action :authenticate, only: %i[create edit update]

      def create
        @user = User.find_by_email(params[:email])
        @user&.deliver_reset_password_instructions!
        render json: { message: 'パスワードリセット用のメールを送信しました' }, status: :ok
      end

      def edit
        @token = params[:id]
        @user = User.load_from_reset_password_token(@token)
        not_authenticated if @user.blank?
      end

      def update
        @token = params[:id]
        @user = User.load_from_reset_password_token(@token)
        return not_authenticated if @user.blank?

        @user.password_confirmation = params[:user][:password_confirmation]
        if @user.change_password(params[:user][:password])
          render json: { message: 'パスワードをリセットしました' }, status: :ok
        else
          render json: { message: 'パスワードをリセットできませんでした' }, status: :unprocessable_entity
        end
      end
    end
  end
end
