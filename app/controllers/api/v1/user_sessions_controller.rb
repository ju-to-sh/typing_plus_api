module Api
  module V1
    class UserSessionsController  < BaseController

      def create
        @user = login(params[:email], params[:password])
        raise ActiveRecord::RecordNotFound unless @user

        json_string = UserSerializer.new(@user).serializable_hash.to_json
        render json: json_string
      end

      def destroy
        logout
        render json: { message: "Logout!" }
      end
    end
  end
end
