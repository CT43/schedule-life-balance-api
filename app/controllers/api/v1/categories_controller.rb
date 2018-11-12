module Api::V1
  class CategoriesController < ApplicationController

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
        params.require(:category).permit(:name, :user_id, :schedule_id)
      end

  end
end
