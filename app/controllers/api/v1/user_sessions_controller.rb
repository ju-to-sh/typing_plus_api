module Api
  module V1
    class UserSessionsController  < BaseController
      skip_before_action :authenticate

      def create
        @user = login(params[:email], params[:password])
        raise ActiveRecord::RecordNotFound unless @user

        json_string = UserSerializer.new(@user).serializable_hash.to_json
        set_access_token!(@user)
        render json: json_string
      end

      def destroy
        logout
        render json: { message: "Logout!" }
      end
    end
  end
end
