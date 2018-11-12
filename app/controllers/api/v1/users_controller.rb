module Api::V1
  class UsersController < ApplicationController

    def index
    end

    def create
    end

    def update
    end

    def destroy
    end

    private

      def idea_params
        params.require(:user).permit(:username, :email)
      end

  end
end
