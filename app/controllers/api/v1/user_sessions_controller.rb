module Api
  module V1
    class UserSessionsController  < BaseController
      skip_before_action :authenticate, only: %i[create]

      def create
        @user = login(params[:email], params[:password])
        raise ActiveRecord::RecordNotFound unless @user

        json_string = UserSerializer.new(@user).serializable_hash.to_json
        set_access_token!(@user)
        render json: json_string
      end

      def destroy
        logout
        delete_access_token!
      end

      private

      def user_params
        params.require(:user).permit(:email, :password)
      end
    end
  end
end
