module Api::V1
  class ActivitiesController < ApplicationController

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
        params.require(:activity).permit(:name, :duration, :schedule_id, :category_id)
      end

  end
end
